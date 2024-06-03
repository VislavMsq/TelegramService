package org.site;

import liquibase.pro.packaged.E;
import lombok.RequiredArgsConstructor;
import org.drinkless.tdlib.TdApi;
import org.drinkless.tdlib.example.Example;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.stb.entity.WebStats;
import org.stb.repository.WebStatsRepository;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/update")
public class EndPoint {
    private final WebStatsRepository webStatsRepository;

    @GetMapping("/view")
    public int getView(@Param("channelId") Long channelId, @Param("id") Long messageId) {

        System.out.println(channelId);

        WebStats webStats = webStatsRepository.findByChannelIdAndGlobalId(channelId, messageId);

        Example.getChatHistory(channelId, 5).join();
        List<TdApi.Message> messageList = Example.getChatHistory(channelId, 5).join();

        Optional<TdApi.Message> first = messageList.stream()
                .filter(message -> message.id == messageId)
                .findFirst();

        if (first.isPresent()) {
            TdApi.Message message = first.get();
            webStats.setViewCount(message.interactionInfo.viewCount);
            webStats.setReplyCount(message.interactionInfo.replyInfo.replyCount);
            if (message.interactionInfo.reactions == null) {
                webStats.setReactionCount(0);
            } else {
                webStats.setReactionCount(Arrays.stream(message.interactionInfo.reactions.reactions)
                        .map(reaction -> reaction.totalCount)
                        .reduce(0, Integer::sum));
            }
            webStatsRepository.save(webStats);
            return 201;

        }
        return 204;
    }
}
