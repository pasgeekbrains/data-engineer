-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metrics` (
  `Variable_name` varchar(193) DEFAULT NULL,
  `Variable_value` text,
  `Type` varchar(210) CHARACTER SET utf8 DEFAULT NULL,
  `Enabled` varchar(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--
-- WHERE:  true limit 100

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
INSERT INTO `metrics` VALUES ('aborted_clients','0','Global Status','YES'),('aborted_connects','1','Global Status','YES'),('acl_cache_items_count','0','Global Status','YES'),('binlog_cache_disk_use','0','Global Status','YES'),('binlog_cache_use','6','Global Status','YES'),('binlog_stmt_cache_disk_use','0','Global Status','YES'),('binlog_stmt_cache_use','0','Global Status','YES'),('bytes_received','53564','Global Status','YES'),('bytes_sent','15029671','Global Status','YES'),('caching_sha2_password_rsa_public_key','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxiWA7F5twNdRZumM6xkc\nI4tBYx71G30ogHC0vIuPfbab0d+GaVjChvnCmfPHEeNwvfG1XPSE1kb1yo/3uUdE\nrLNiuGiewXhehpsG88ZKUOhkzzccfvmptX7Asl3zHUZa+tWCrsiFd2O6RU8QvuM6\nOeL3vh5PHdZaruXdLVEl/nBAZVWmAzPTNJVfY60C53wope3Fy6rzbXFiwLgJ0iNC\nKxcom3O/jPoo8cSb5HS4+ehdvkj/qjTMJzKNmnmKk0Ec63nIZj+jLKQCFMAy0cQN\nmwdbEqo2bSL1tIld1d+aYIx1M1sjw2oz207voONybDyjx9YEkXUhZrCuHzXRqc2T\nPQIDAQAB\n-----END PUBLIC KEY-----\n','Global Status','YES'),('com_stmt_reprepare','0','Global Status','YES'),('connection_errors_accept','0','Global Status','YES'),('connection_errors_internal','0','Global Status','YES'),('connection_errors_max_connections','0','Global Status','YES'),('connection_errors_peer_address','0','Global Status','YES'),('connection_errors_select','0','Global Status','YES'),('connection_errors_tcpwrap','0','Global Status','YES'),('connections','16','Global Status','YES'),('created_tmp_disk_tables','1','Global Status','YES'),('created_tmp_files','8','Global Status','YES'),('created_tmp_tables','1281','Global Status','YES'),('current_tls_ca','ca.pem','Global Status','YES'),('current_tls_capath','','Global Status','YES'),('current_tls_cert','server-cert.pem','Global Status','YES'),('current_tls_cipher','','Global Status','YES'),('current_tls_ciphersuites','','Global Status','YES'),('current_tls_crl','','Global Status','YES'),('current_tls_crlpath','','Global Status','YES'),('current_tls_key','server-key.pem','Global Status','YES'),('current_tls_version','TLSv1,TLSv1.1,TLSv1.2,TLSv1.3','Global Status','YES'),('delayed_errors','0','Global Status','YES'),('delayed_insert_threads','0','Global Status','YES'),('delayed_writes','0','Global Status','YES'),('error_log_buffered_bytes','2480','Global Status','YES'),('error_log_buffered_events','18','Global Status','YES'),('error_log_expired_events','0','Global Status','YES'),('error_log_latest_write','1604947034836922','Global Status','YES'),('flush_commands','3','Global Status','YES'),('handler_commit','1189','Global Status','YES'),('handler_delete','1','Global Status','YES'),('handler_discover','0','Global Status','YES'),('handler_external_lock','16732','Global Status','YES'),('handler_mrr_init','0','Global Status','YES'),('handler_prepare','22','Global Status','YES'),('handler_read_first','392','Global Status','YES'),('handler_read_key','6517','Global Status','YES'),('handler_read_last','0','Global Status','YES'),('handler_read_next','9134','Global Status','YES'),('handler_read_prev','0','Global Status','YES'),('handler_read_rnd','2059','Global Status','YES'),('handler_read_rnd_next','968516','Global Status','YES'),('handler_rollback','0','Global Status','YES'),('handler_savepoint','0','Global Status','YES'),('handler_savepoint_rollback','0','Global Status','YES'),('handler_update','341','Global Status','YES'),('handler_write','472107','Global Status','YES'),('innodb_buffer_pool_bytes_data','16515072','Global Status','YES'),('innodb_buffer_pool_bytes_dirty','884736','Global Status','YES'),('innodb_buffer_pool_dump_status','Dumping of buffer pool not started','Global Status','YES'),('innodb_buffer_pool_load_status','Buffer pool(s) load completed at 201109 21:37:13','Global Status','YES'),('innodb_buffer_pool_pages_data','1008','Global Status','YES'),('innodb_buffer_pool_pages_dirty','54','Global Status','YES'),('innodb_buffer_pool_pages_flushed','258','Global Status','YES'),('innodb_buffer_pool_pages_free','7175','Global Status','YES'),('innodb_buffer_pool_pages_misc','9','Global Status','YES'),('innodb_buffer_pool_pages_total','8192','Global Status','YES'),('innodb_buffer_pool_read_ahead','0','Global Status','YES'),('innodb_buffer_pool_read_ahead_evicted','0','Global Status','YES'),('innodb_buffer_pool_read_ahead_rnd','0','Global Status','YES'),('innodb_buffer_pool_read_requests','37129','Global Status','YES'),('innodb_buffer_pool_reads','850','Global Status','YES'),('innodb_buffer_pool_resize_status','','Global Status','YES'),('innodb_buffer_pool_wait_free','0','Global Status','YES'),('innodb_buffer_pool_write_requests','2218','Global Status','YES'),('innodb_data_fsyncs','171','Global Status','YES'),('innodb_data_pending_fsyncs','0','Global Status','YES'),('innodb_data_pending_reads','0','Global Status','YES'),('innodb_data_pending_writes','0','Global Status','YES'),('innodb_data_read','22615040','Global Status','YES'),('innodb_data_reads','1399','Global Status','YES'),('innodb_data_writes','469','Global Status','YES'),('innodb_data_written','4535808','Global Status','YES'),('innodb_dblwr_pages_written','123','Global Status','YES'),('innodb_dblwr_writes','38','Global Status','YES'),('innodb_log_waits','0','Global Status','YES'),('innodb_log_write_requests','1033','Global Status','YES'),('innodb_log_writes','107','Global Status','YES'),('innodb_num_open_files','18','Global Status','YES'),('innodb_os_log_fsyncs','83','Global Status','YES'),('innodb_os_log_pending_fsyncs','0','Global Status','YES'),('innodb_os_log_pending_writes','0','Global Status','YES'),('innodb_os_log_written','100352','Global Status','YES'),('innodb_page_size','16384','Global Status','YES'),('innodb_pages_created','162','Global Status','YES'),('innodb_pages_read','849','Global Status','YES'),('innodb_pages_written','268','Global Status','YES'),('innodb_redo_log_enabled','ON','Global Status','YES'),('innodb_row_lock_current_waits','0','Global Status','YES'),('innodb_row_lock_time','0','Global Status','YES'),('innodb_row_lock_time_avg','0','Global Status','YES');
/*!40000 ALTER TABLE `metrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10  0:21:22
