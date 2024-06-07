package org.stb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.stb.entity.Channel;
import org.stb.entity.WebStats;

import java.util.UUID;

@Repository
public interface WebStatsRepository extends JpaRepository<WebStats, UUID> {
    WebStats findByChannelIdAndGlobalId(Long channelId, Long messageId);

    WebStats findFirstByChannelIdAndLocalId(Long channelId, Integer localId);

}
