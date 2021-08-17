use vk;

DROP TABLE IF EXISTS Friend_requests;

CREATE TABLE Friend_requests (
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_user_id BIGINT UNSIGNED NOT NULL,
	`status` ENUM('requested', 'approved', 'declined', 'unfriended'),
	requested_at DATETIME DEFAULT now(),
	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (initiator_user_id, target_user_id),
	FOREIGN KEY (initiator_user_id) REFERENCES Users(id),
	FOREIGN KEY (target_user_id) REFERENCES Users(id)
);
INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1001', '1002', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1002', '1003', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1003', '1004', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1004', '1005', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1005', '1006', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1006', '1007', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1007', '1008', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1008', '1011', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1011', '1013', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1013', '1016', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1016', '1019', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1019', '1020', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1020', '1021', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1021', '1022', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1022', '1028', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1028', '1031', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1031', '1032', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1032', '1034', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1034', '1036', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1036', '1037', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1037', '1038', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1038', '1040', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1040', '1041', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1041', '1042', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1042', '1046', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1046', '1049', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1049', '1050', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1050', '1051', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1051', '1052', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1052', '1054', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1054', '1055', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1055', '1056', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1056', '1057', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1057', '1058', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1058', '1059', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1059', '1061', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1061', '1062', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1062', '1063', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1063', '1065', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1065', '1066', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1066', '1067', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1067', '1071', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1071', '1073', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1073', '1074', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1074', '1075', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1075', '1076', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1076', '1077', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1077', '1079', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1079', '1082', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1082', '1083', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1083', '1085', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1085', '1087', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1087', '1088', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1088', '1092', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1092', '1093', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1093', '1094', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1094', '1095', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1095', '1097', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1097', '1098', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1098', '1099', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1099', '1100', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1100', '1103', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1103', '1107', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1107', '1108', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1108', '1109', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1109', '1110', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1110', '1112', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1112', '1113', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1113', '1114', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1114', '1118', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1118', '1119', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1119', '1123', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1123', '1125', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1125', '1126', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1126', '1128', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1128', '1130', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1130', '1132', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1132', '1133', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1133', '1135', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1135', '1136', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1136', '1137', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1137', '1138', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1138', '1140', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1140', '1141', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1141', '1142', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1142', '1146', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1146', '1147', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1147', '1148', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1148', '1151', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1151', '1153', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1153', '1154', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1154', '1156', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1156', '1157', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1157', '1158', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1158', '1161', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1161', '1164', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1164', '1165', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1165', '1166', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1166', '1167', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1167', '1168', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1168', '1169', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1169', '1170', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1170', '1171', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1171', '1174', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1174', '1177', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1177', '1179', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1179', '1181', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1181', '1182', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1182', '1183', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1183', '1184', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1184', '1185', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1185', '1186', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1186', '1187', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1187', '1188', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1188', '1190', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1190', '1191', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1191', '1194', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1194', '1199', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1199', '1201', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1201', '1203', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1203', '1204', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1204', '1206', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1206', '1208', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1208', '1213', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1213', '1215', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1215', '1216', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1216', '1217', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1217', '1218', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1218', '1219', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1219', '1220', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1220', '1223', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1223', '1224', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1224', '1226', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1226', '1227', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1227', '1228', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1228', '1232', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1232', '1233', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1233', '1235', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1235', '1237', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1237', '1238', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1238', '1240', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1240', '1243', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1243', '1246', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1246', '1248', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1248', '1250', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1250', '1252', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1252', '1253', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1253', '1254', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1254', '1258', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1258', '1260', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1260', '1261', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1261', '1263', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1263', '1264', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1264', '1265', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1265', '1266', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1266', '1268', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1268', '1270', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1270', '1271', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1271', '1274', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1274', '1275', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1275', '1277', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1277', '1278', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1278', '1280', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1280', '1283', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1283', '1284', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1284', '1286', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1286', '1288', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1288', '1289', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1289', '1293', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1293', '1301', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1301', '1302', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1302', '1306', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1306', '1307', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1307', '1309', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1309', '1312', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1312', '1314', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1314', '1316', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1316', '1318', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1318', '1321', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1321', '1323', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1323', '1328', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1328', '1332', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1332', '1334', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1334', '1335', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1335', '1337', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1337', '1338', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1338', '1339', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1339', '1340', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1340', '1342', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1342', '1343', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1343', '1345', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1345', '1346', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1346', '1347', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1347', '1348', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1348', '1351', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1351', '1352', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1352', '1354', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1354', '1357', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1357', '1363', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1363', '1364', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1364', '1365', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1365', '1366', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1366', '1373', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1373', '1376', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1376', '1377', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1377', '1378', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1378', '1379', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1379', '1381', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1381', '1382', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1382', '1383', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1383', '1384', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1384', '1385', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1385', '1386', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1386', '1388', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1388', '1390', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1390', '1391', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1391', '1394', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1394', '1397', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1397', '1399', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1399', '1400', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1400', '1404', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1404', '1405', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1405', '1406', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1406', '1409', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1409', '1411', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1411', '1419', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1419', '1426', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1426', '1427', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1427', '1428', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1428', '1429', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1429', '1430', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1430', '1435', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1435', '1437', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1437', '1441', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1441', '1442', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1442', '1443', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1443', '1444', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1444', '1446', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1446', '1449', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1449', '1451', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1451', '1452', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1452', '1453', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1453', '1459', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1459', '1460', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1460', '1461', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1461', '1463', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1463', '1464', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1464', '1465', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1465', '1470', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1470', '1474', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1474', '1476', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1476', '1478', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1478', '1479', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1479', '1480', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1480', '1481', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1481', '1482', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1482', '1484', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1484', '1485', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1485', '1487', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1487', '1488', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1488', '1489', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1489', '1492', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1492', '1493', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1493', '1495', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1495', '1496', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1496', '1497', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1497', '1502', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1502', '1506', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1506', '1507', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1507', '1509', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1509', '1513', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1513', '1516', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1516', '1520', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1520', '1521', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1521', '1523', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1523', '1524', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1524', '1525', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1525', '1526', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1526', '1528', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1528', '1533', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1533', '1534', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1534', '1536', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1536', '1538', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1538', '1541', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1541', '1543', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1543', '1546', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1546', '1549', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1549', '1551', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1551', '1552', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1552', '1553', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1553', '1554', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1554', '1559', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1559', '1561', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1561', '1566', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1566', '1567', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1567', '1570', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1570', '1572', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1572', '1575', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1575', '1576', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1576', '1578', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1578', '1579', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1579', '1580', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1580', '1581', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1581', '1584', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1584', '1585', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1585', '1588', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1588', '1589', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1589', '1590', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1590', '1591', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1591', '1594', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1594', '1601', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1601', '1602', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1602', '1603', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1603', '1605', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1605', '1606', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1606', '1611', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1611', '1613', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1613', '1614', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1614', '1615', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1615', '1620', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1620', '1621', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1621', '1623', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1623', '1624', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1624', '1625', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1625', '1628', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1628', '1629', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1629', '1630', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1630', '1631', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1631', '1632', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1632', '1633', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1633', '1636', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1636', '1638', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1638', '1639', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1639', '1640', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1640', '1641', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1641', '1644', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1644', '1646', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1646', '1647', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1647', '1650', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1650', '1651', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1651', '1655', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1655', '1657', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1657', '1659', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1659', '1661', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1661', '1662', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1662', '1663', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1663', '1664', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1664', '1672', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1672', '1674', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1674', '1676', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1676', '1679', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1679', '1682', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1682', '1687', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1687', '1691', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1691', '1692', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1692', '1693', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1693', '1697', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1697', '1698', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1698', '1701', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1701', '1702', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1702', '1703', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1703', '1704', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1704', '1709', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1709', '1710', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1710', '1712', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1712', '1713', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1713', '1720', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1720', '1723', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1723', '1724', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1724', '1725', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1725', '1727', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1727', '1728', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1728', '1732', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1732', '1737', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1737', '1738', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1738', '1739', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1739', '1741', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1741', '1742', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1742', '1743', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1743', '1744', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1744', '1746', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1746', '1748', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1748', '1749', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1749', '1750', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1750', '1751', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1751', '1753', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1753', '1754', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1754', '1756', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1756', '1757', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1757', '1758', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1758', '1761', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1761', '1762', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1762', '1766', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1766', '1770', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1770', '1773', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1773', '1777', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1777', '1779', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1779', '1780', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1780', '1782', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1782', '1783', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1783', '1789', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1789', '1791', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1791', '1792', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1792', '1794', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1794', '1796', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1796', '1797', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1797', '1799', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1799', '1802', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1802', '1805', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1805', '1806', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1806', '1808', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1808', '1814', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1814', '1818', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1818', '1822', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1822', '1823', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1823', '1825', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1825', '1829', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1829', '1838', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1838', '1839', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1839', '1840', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1840', '1841', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1841', '1846', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1846', '1848', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1848', '1849', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1849', '1851', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1851', '1852', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1852', '1854', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1854', '1855', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1855', '1856', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1856', '1857', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1857', '1859', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1859', '1860', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1860', '1861', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1861', '1862', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1862', '1866', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1866', '1872', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1872', '1873', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1873', '1876', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1876', '1877', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1877', '1878', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1878', '1879', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1879', '1881', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1881', '1883', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1883', '1885', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1885', '1886', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1886', '1888', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1888', '1891', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1891', '1892', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1892', '1893', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1893', '1898', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1898', '1899', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1899', '1900', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1900', '1903', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1903', '1910', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1910', '1911', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1911', '1913', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1913', '1915', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1915', '1916', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1916', '1920', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1920', '1921', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1921', '1922', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1922', '1924', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1924', '1929', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1929', '1930', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1930', '1931', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1931', '1932', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1932', '1933', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1933', '1935', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1935', '1938', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1938', '1940', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1940', '1942', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1942', '1946', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1946', '1947', 'declined', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1947', '1948', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1948', '1950', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1950', '1954', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1954', '1955', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1955', '1956', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1956', '1957', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1957', '1959', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1959', '1963', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1963', '1966', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1966', '1967', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1967', '1973', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1973', '1977', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1977', '1979', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1979', '1981', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1981', '1982', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1982', '1983', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1983', '1988', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1988', '1989', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1989', '1991', 'unfriended', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1991', '1993', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1993', '1997', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1997', '2000', 'approved', '1995-04-26 06:26:24', '1981-10-31 07:19:25');

INSERT INTO `Friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('2000', '1001', 'requested', '1995-04-26 06:26:24', '1981-10-31 07:19:25');
