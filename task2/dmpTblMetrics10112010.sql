-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics` (
  `Variable_name` varchar(193) CHARACTER SET utf8 DEFAULT NULL,
  `Variable_value` text CHARACTER SET utf8,
  `Type` varchar(210) CHARACTER SET utf8 DEFAULT NULL,
  `Enabled` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--
-- WHERE:  true limit 100

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
INSERT INTO `metrics` VALUES ('aborted_clients','0','Global Status','YES'),('aborted_connects','1','Global Status','YES'),('binlog_cache_disk_use','0','Global Status','YES'),('binlog_cache_use','0','Global Status','YES'),('binlog_stmt_cache_disk_use','0','Global Status','YES'),('binlog_stmt_cache_use','0','Global Status','YES'),('bytes_received','11410','Global Status','YES'),('bytes_sent','45269','Global Status','YES'),('com_stmt_reprepare','0','Global Status','YES'),('connections','8','Global Status','YES'),('connection_errors_accept','0','Global Status','YES'),('connection_errors_internal','0','Global Status','YES'),('connection_errors_max_connections','0','Global Status','YES'),('connection_errors_peer_address','0','Global Status','YES'),('connection_errors_select','0','Global Status','YES'),('connection_errors_tcpwrap','0','Global Status','YES'),('created_tmp_disk_tables','15','Global Status','YES'),('created_tmp_files','8','Global Status','YES'),('created_tmp_tables','44','Global Status','YES'),('delayed_errors','0','Global Status','YES'),('delayed_insert_threads','0','Global Status','YES'),('delayed_writes','0','Global Status','YES'),('flush_commands','1','Global Status','YES'),('handler_commit','14','Global Status','YES'),('handler_delete','0','Global Status','YES'),('handler_discover','0','Global Status','YES'),('handler_external_lock','260','Global Status','YES'),('handler_mrr_init','0','Global Status','YES'),('handler_prepare','0','Global Status','YES'),('handler_read_first','19','Global Status','YES'),('handler_read_key','431','Global Status','YES'),('handler_read_last','0','Global Status','YES'),('handler_read_next','2','Global Status','YES'),('handler_read_prev','0','Global Status','YES'),('handler_read_rnd','414','Global Status','YES'),('handler_read_rnd_next','12983','Global Status','YES'),('handler_rollback','0','Global Status','YES'),('handler_savepoint','0','Global Status','YES'),('handler_savepoint_rollback','0','Global Status','YES'),('handler_update','0','Global Status','YES'),('handler_write','2986','Global Status','YES'),('innodb_available_undo_logs','128','Global Status','YES'),('innodb_buffer_pool_bytes_data','4538368','Global Status','YES'),('innodb_buffer_pool_bytes_dirty','327680','Global Status','YES'),('innodb_buffer_pool_dump_status','Dumping of buffer pool not started','Global Status','YES'),('innodb_buffer_pool_load_status','Buffer pool(s) load completed at 201110 18:56:09','Global Status','YES'),('innodb_buffer_pool_pages_data','277','Global Status','YES'),('innodb_buffer_pool_pages_dirty','20','Global Status','YES'),('innodb_buffer_pool_pages_flushed','92','Global Status','YES'),('innodb_buffer_pool_pages_free','7915','Global Status','YES'),('innodb_buffer_pool_pages_misc','0','Global Status','YES'),('innodb_buffer_pool_pages_total','8192','Global Status','YES'),('innodb_buffer_pool_reads','224','Global Status','YES'),('innodb_buffer_pool_read_ahead','0','Global Status','YES'),('innodb_buffer_pool_read_ahead_evicted','0','Global Status','YES'),('innodb_buffer_pool_read_ahead_rnd','0','Global Status','YES'),('innodb_buffer_pool_read_requests','2588','Global Status','YES'),('innodb_buffer_pool_resize_status','','Global Status','YES'),('innodb_buffer_pool_wait_free','0','Global Status','YES'),('innodb_buffer_pool_write_requests','847','Global Status','YES'),('innodb_data_fsyncs','53','Global Status','YES'),('innodb_data_pending_fsyncs','0','Global Status','YES'),('innodb_data_pending_reads','0','Global Status','YES'),('innodb_data_pending_writes','0','Global Status','YES'),('innodb_data_read','3740160','Global Status','YES'),('innodb_data_reads','252','Global Status','YES'),('innodb_data_writes','145','Global Status','YES'),('innodb_data_written','2178560','Global Status','YES'),('innodb_dblwr_pages_written','39','Global Status','YES'),('innodb_dblwr_writes','4','Global Status','YES'),('innodb_log_waits','0','Global Status','YES'),('innodb_log_writes','20','Global Status','YES'),('innodb_log_write_requests','28','Global Status','YES'),('innodb_num_open_files','23','Global Status','YES'),('innodb_os_log_fsyncs','28','Global Status','YES'),('innodb_os_log_pending_fsyncs','0','Global Status','YES'),('innodb_os_log_pending_writes','0','Global Status','YES'),('innodb_os_log_written','28160','Global Status','YES'),('innodb_pages_created','54','Global Status','YES'),('innodb_pages_read','223','Global Status','YES'),('innodb_pages_written','92','Global Status','YES'),('innodb_page_size','16384','Global Status','YES'),('innodb_rows_deleted','0','Global Status','YES'),('innodb_rows_inserted','840','Global Status','YES'),('innodb_rows_read','1258','Global Status','YES'),('innodb_rows_updated','0','Global Status','YES'),('innodb_row_lock_current_waits','0','Global Status','YES'),('innodb_row_lock_time','0','Global Status','YES'),('innodb_row_lock_time_avg','0','Global Status','YES'),('innodb_row_lock_time_max','0','Global Status','YES'),('innodb_row_lock_waits','0','Global Status','YES'),('innodb_truncated_status_writes','0','Global Status','YES'),('key_blocks_not_flushed','0','Global Status','YES'),('key_blocks_unused','13396','Global Status','YES'),('key_blocks_used','3','Global Status','YES'),('key_reads','3','Global Status','YES'),('key_read_requests','6','Global Status','YES'),('key_writes','0','Global Status','YES'),('key_write_requests','0','Global Status','YES'),('locked_connects','0','Global Status','YES');
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

-- Dump completed on 2020-11-10 19:32:06
