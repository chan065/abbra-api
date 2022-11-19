searchCulture#Ver.1#{
	SELECT AnnounceId, AnnounceDate, Title, Detail, AnnounceDate, CoverPicture, File
	FROM [OC].I_Announce_H
	WHERE 1=1
	AND Status = 'Y'
	AND AnnounceType = ?  /* 14=Culture1, 15=Culture2, 16=Culture3 */
	AND AnnounceDate >= NOW() - INTERVAL 1 WEEK
	AND AnnounceDate <= NOW() + INTERVAL 1 WEEK
	ORDER BY AnnounceDate DESC
	limit 0,7
}