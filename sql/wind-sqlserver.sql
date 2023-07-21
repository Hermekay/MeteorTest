/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 12002269
 Source Host           : localhost:1433
 Source Catalog        : wind
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002269
 File Encoding         : 65001

 Date: 18/07/2023 16:24:52
*/


-- ----------------------------
-- Table structure for email_send_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[email_send_log]') AND type IN ('U'))
	DROP TABLE [dbo].[email_send_log]
GO

CREATE TABLE [dbo].[email_send_log] (
  [id] bigint  NOT NULL,
  [email] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [subject] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_data] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [response_date] datetime2(7)  NULL,
  [try_num] int  NULL,
  [msg] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nvarchar(4) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[email_send_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系电话',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主题',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'subject'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板类型',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送编码',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'send_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'响应时间',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'response_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'重发次数',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'try_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回消息',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'msg'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送状态',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记（0：正常；1：删除）',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注信息',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'email_send_log',
'COLUMN', N'tenant_id'
GO


-- ----------------------------
-- Records of email_send_log
-- ----------------------------

-- ----------------------------
-- Table structure for email_template
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[email_template]') AND type IN ('U'))
	DROP TABLE [dbo].[email_template]
GO

CREATE TABLE [dbo].[email_template] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [template_subject] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [template_content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [update_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime2(7)  NULL,
  [del_flag] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [update_date] datetime2(7)  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[email_template] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模版名称',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模版编码',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模版主题',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'template_subject'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模版内容',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'template_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注信息',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记（0：正常；1：删除）',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'update_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'email_template',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮件发送模板',
'SCHEMA', N'dbo',
'TABLE', N'email_template'
GO


-- ----------------------------
-- Records of email_template
-- ----------------------------
INSERT INTO [dbo].[email_template] ([id], [name], [code], [template_subject], [template_content], [remarks], [update_by], [create_date], [del_flag], [create_by], [update_date], [tenant_id]) VALUES (N'1668023749616085503', N'测试模板', N'2p6dl894ur', N'测试模板', N'&lt;p&gt;测试模板${code}&lt;/p&gt;', NULL, N'1663023749615980545', N'2018-11-09 11:39:07.0000000', N'0', N'1663023749615980545', N'2021-09-13 12:38:09.0000000', N'00000000')
GO


-- ----------------------------
-- Table structure for oss_attachment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oss_attachment]') AND type IN ('U'))
	DROP TABLE [dbo].[oss_attachment]
GO

CREATE TABLE [dbo].[oss_attachment] (
  [id] bigint  NOT NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [user_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [upload_time] datetime2(7)  NOT NULL,
  [upload_ip] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_extension] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_path] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_size] int  NOT NULL,
  [content_type] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [base_path] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[oss_attachment] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件名称',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'file_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上传时间',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'upload_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上传的ID',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'upload_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件扩展名',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'file_extension'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件路径',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'file_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件大小',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'file_size'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'oss的根路径',
'SCHEMA', N'dbo',
'TABLE', N'oss_attachment',
'COLUMN', N'base_path'
GO


-- ----------------------------
-- Records of oss_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for sms_send_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sms_send_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sms_send_log]
GO

CREATE TABLE [dbo].[sms_send_log] (
  [id] bigint  NOT NULL,
  [phone] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [template_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_data] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [send_code] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [try_num] int  NULL,
  [status] nvarchar(4) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [smsid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [msg] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [response_date] datetime2(7)  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sms_send_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系电话',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板名称',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'template_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送数据',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'send_data'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送状态',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送响应消息ID',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'smsid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回码',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回消息',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'msg'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记（0：正常；1：删除）',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'响应时间',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'response_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sms_send_log',
'COLUMN', N'tenant_id'
GO


-- ----------------------------
-- Records of sms_send_log
-- ----------------------------

-- ----------------------------
-- Table structure for sms_template
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sms_template]') AND type IN ('U'))
	DROP TABLE [dbo].[sms_template]
GO

CREATE TABLE [dbo].[sms_template] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [business_type] nvarchar(4) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [template_content] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[sms_template] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'模版名称',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模版编码',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务类型',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'business_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模版内容',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'template_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'update_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记（0：正常；1：删除）',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注信息',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sms_template',
'COLUMN', N'tenant_id'
GO


-- ----------------------------
-- Records of sms_template
-- ----------------------------
INSERT INTO [dbo].[sms_template] ([id], [name], [code], [business_type], [template_content], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1662734715058339842', N'用户注册验证码', N'7hch8lsi8w', N'1', N'SMS_119805068', N'1663023749615980545', N'2018-09-14 10:34:21.0000000', N'1663023749615980545', N'2018-09-16 13:01:35.0000000', N'0', NULL, N'00000000')
GO

INSERT INTO [dbo].[sms_template] ([id], [name], [code], [business_type], [template_content], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1662734715058339843', N'找回密码验证码', N'oal0up6qo2', N'1', N'SMS_119805067', N'1663023749615980545', N'2018-09-14 10:34:21.0000000', N'1663023749615980545', N'2021-09-13 12:25:10.0000000', N'0', NULL, N'00000000')
GO


-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_config]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_config]
GO

CREATE TABLE [dbo].[sys_config] (
  [id] bigint  NOT NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [setting] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] int  NOT NULL,
  [value] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [del_flag] int  NOT NULL,
  [is_sys] tinyint  NOT NULL,
  [tenant_id] nvarchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_config] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配置项',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'setting'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是系统配置，如果是，该配置不可以删除',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'is_sys'
GO


-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO [dbo].[sys_config] ([id], [create_by], [create_date], [update_by], [update_date], [remarks], [name], [code], [setting], [type], [value], [del_flag], [is_sys], [tenant_id]) VALUES (N'1', NULL, N'2023-04-08 21:00:36.0000000', NULL, N'2020-05-27 11:10:20.0000000', N'系统参数不能够删除，但是可以修改', N'作者', N'author', NULL, N'1', N'SunSeaGear', N'0', N'1', N'00000000')
GO

INSERT INTO [dbo].[sys_config] ([id], [create_by], [create_date], [update_by], [update_date], [remarks], [name], [code], [setting], [type], [value], [del_flag], [is_sys], [tenant_id]) VALUES (N'2', NULL, N'2023-04-08 21:00:00.0000000', NULL, N'2020-05-27 10:47:13.0000000', NULL, N'产品ID', N'productId', NULL, N'1', N'wind', N'0', N'0', N'00000000')
GO

INSERT INTO [dbo].[sys_config] ([id], [create_by], [create_date], [update_by], [update_date], [remarks], [name], [code], [setting], [type], [value], [del_flag], [is_sys], [tenant_id]) VALUES (N'3', NULL, N'2023-04-08 21:00:36.0000000', NULL, N'2023-05-28 16:10:52.0000000', N'演示模式设置为&ldquo;是&rdquo;', N'演示模式', N'isDemo', N'sf_bool', N'5', N'false', N'0', N'1', N'00000000')
GO

INSERT INTO [dbo].[sys_config] ([id], [create_by], [create_date], [update_by], [update_date], [remarks], [name], [code], [setting], [type], [value], [del_flag], [is_sys], [tenant_id]) VALUES (N'4', NULL, N'2023-04-08 21:00:00.0000000', NULL, N'2023-04-08 21:00:48.0000000', NULL, N'refresh token过期时间(分钟)', N'refreshTokenExpire', NULL, N'1', N'60', N'0', N'1', N'00000000')
GO

INSERT INTO [dbo].[sys_config] ([id], [create_by], [create_date], [update_by], [update_date], [remarks], [name], [code], [setting], [type], [value], [del_flag], [is_sys], [tenant_id]) VALUES (N'5', NULL, N'2023-04-08 21:00:00.0000000', N'1663023749615980545', N'2023-06-28 19:49:17.0000000', NULL, N'token过期时间(分钟)', N'tokenExpire', NULL, N'1', N'30', N'0', N'1', N'00000000')
GO

INSERT INTO [dbo].[sys_config] ([id], [create_by], [create_date], [update_by], [update_date], [remarks], [name], [code], [setting], [type], [value], [del_flag], [is_sys], [tenant_id]) VALUES (N'1662734715058339841', NULL, N'2023-05-28 16:17:03.0000000', N'1663023749615980545', N'2023-06-05 23:46:33.0000000', N'需要重启服务生效；
外接口必须以/json/为路径开头', N'开放对外接口', N'openAPI', N'sf_bool', N'5', N'true', N'0', N'1', N'00000000')
GO

INSERT INTO [dbo].[sys_config] ([id], [create_by], [create_date], [update_by], [update_date], [remarks], [name], [code], [setting], [type], [value], [del_flag], [is_sys], [tenant_id]) VALUES (N'1674440259104559106', N'1663023749615980545', N'2023-06-29 23:30:42.0000000', N'1663023749615980545', N'2023-06-29 23:42:25.0000000', N'取值范围0-5，0表示随机，1-5表示对应的登录页面序号。', N'登录页面', N'loginPage', NULL, N'1', N'5', N'0', N'1', N'00000000')
GO


-- ----------------------------
-- Table structure for sys_data_rule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_data_rule]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_data_rule]
GO

CREATE TABLE [dbo].[sys_data_rule] (
  [id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] int  NULL,
  [resource_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [scope_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [scope_field] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [scope_class] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [scope_column] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [scope_type] int  NOT NULL,
  [scope_value] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [table_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_column] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [user_entity_field] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_data_rule] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'update_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已删除',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'resource_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'scope_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'scope_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限类名',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'scope_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'scope_column'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'scope_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限值域',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'scope_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库表',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户表对应字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'user_column'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'user实体类对应字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule',
'COLUMN', N'user_entity_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_rule'
GO


-- ----------------------------
-- Records of sys_data_rule
-- ----------------------------
INSERT INTO [dbo].[sys_data_rule] ([id], [create_by], [create_date], [update_by], [update_date], [del_flag], [resource_code], [scope_name], [scope_field], [scope_class], [scope_column], [scope_type], [scope_value], [remarks], [table_name], [user_column], [tenant_id], [user_entity_field]) VALUES (N'1663023749615980745', N'1663023749615980545', N'2019-11-29 15:18:25.0000000', N'1663023749615980545', N'2022-08-04 23:38:31.0000000', N'0', N'table', N'test', N'id,title,author,type,level,content,`user.realname`,`user.username`,status', N'com.sunseagear.wind.modules.test.table.mapper.TableMapper.selectPage', N'author', N'5', N'author =''${id}''', NULL, N'sys_organization', N'organization_id', N'00000000', N'organizationId')
GO

INSERT INTO [dbo].[sys_data_rule] ([id], [create_by], [create_date], [update_by], [update_date], [del_flag], [resource_code], [scope_name], [scope_field], [scope_class], [scope_column], [scope_type], [scope_value], [remarks], [table_name], [user_column], [tenant_id], [user_entity_field]) VALUES (N'1663023749615980845', N'1663023749615980545', N'2019-12-03 07:30:19.0000000', N'1663023749615980545', N'2020-05-29 22:54:32.0000000', N'0', N'expandTable', N'test1', N'*', N'com.sunseagear.wind.modules.test.expandtable.mapper.ExpandTableMapper.selectPage', N'organization_id', N'4', NULL, NULL, N'sys_organization', N'organizationId', N'00000000', NULL)
GO


-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict]
GO

CREATE TABLE [dbo].[sys_dict] (
  [id] bigint  NOT NULL,
  [gid] bigint  NULL,
  [label] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [value] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [remarks] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_dict] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'gid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'键值键',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'label'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据字典',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict'
GO


-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663297', N'1663456260372434957', N'所在机构及下级可见', N'4', N'4', N'', N'1663023749615980545', N'2019-11-29 14:35:36.0000000', N'1663023749615980545', N'2020-01-25 21:44:43.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663298', N'1663456260372434954', N'按钮', N'3', N'3', N'', N'1663023749615980545', N'2018-10-30 14:47:23.0000000', N'1663023749615980545', N'2018-11-06 12:38:29.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663299', N'1663456260372434946', N'修改', N'update', N'2', N'修改', N'1663023749615980545', N'2018-09-30 23:55:04.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663300', N'1663456260372434955', N'继续执行', N'1', N'1', N'继续执行', N'1663023749615980545', N'2018-09-17 15:37:58.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663301', N'1663456260372434946', N'删除', N'delete', N'5', N'删除', N'1663023749615980545', N'2018-09-30 23:55:29.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663302', N'1663456260372434957', N'本人可见', N'2', N'2', N'', N'1663023749615980545', N'2019-11-29 14:35:00.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663303', N'1663456260372434952', N'25', N'25', N'1', N'', N'1663023749615980545', N'2019-04-22 11:32:20.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663304', N'1663456260372434946', N'导出', N'export', N'7', N'导出', N'1663023749615980545', N'2018-09-30 23:56:28.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663305', N'1663456260372434947', N'是', N'true', N'1', N'', N'1663023749615980545', N'2018-10-30 14:41:25.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663306', N'1663456260372434948', N'男', N'1', N'1', N'1', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663307', N'1663456260372434948', N'女', N'2', N'1', N'女', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663308', N'1663456260372434949', N'是', N'1', N'1', N'是', NULL, NULL, N'1663023828695388161', N'2023-03-28 12:00:13.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663309', N'1663456260372434949', N'否', N'0', N'2', N'否', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663310', N'1663456260372434950', N'在线', N'on_line', N'1', N'在线', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663311', N'1663456260372434950', N'隐身', N'hidden', N'2', N'隐身', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663312', N'1663456260372434950', N'强制退出', N'force_logout', N'3', N'强制退出', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663313', N'1663456260372434951', N'验证码', N'1', N'1', N'验证码', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663314', N'1663456260372434951', N'通知', N'2', N'2', N'通知', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663315', N'1663456260372434951', N'其他', N'99', N'99', N'其他', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663316', N'1663456260372434946', N'新增', N'insert', N'1', N'新增', N'1663023749615980545', N'2018-09-30 23:54:48.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663317', N'1663456260372434955', N'放弃执行', N'3', N'3', N'放弃执行', N'1663023749615980545', N'2018-09-17 15:38:20.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663318', N'1663456260372434955', N'一次执行', N'2', N'2', N'一次执行', N'1663023749615980545', N'2018-09-17 15:38:10.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663319', N'1663456260372434956', N'成功', N'1', N'1', N'成功', N'1663023749615980545', N'2018-09-28 13:15:31.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663320', N'1663456260372434954', N'菜单', N'2', N'2', N'', N'1663023749615980545', N'2018-10-30 14:47:13.0000000', N'1663023749615980545', N'2018-11-06 12:38:26.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663321', N'1663456260372434957', N'全部可见', N'1', N'1', N'', N'1663023749615980545', N'2019-11-29 14:34:43.0000000', N'1663023749615980545', N'2021-09-13 12:23:06.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663322', N'1663456260372434946', N'查询', N'select', N'3', N'查询', N'1663023749615980545', N'2018-09-30 23:55:13.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663323', N'1663456260372434953', N'普通类', N'2', N'2', N'普通类', N'1663023749615980545', N'2018-08-20 15:00:56.0000000', N'1663023749615980545', N'2018-09-17 17:57:04.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663324', N'1663456260372434957', N'所在机构可见', N'3', N'3', N'', N'1663023749615980545', N'2019-11-29 14:35:10.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663325', N'1663456260372434952', N'50', N'50', N'2', N'', N'1663023749615980545', N'2019-04-22 11:32:30.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663326', N'1663456260372434954', N'目录', N'1', N'1', N'', N'1663023749615980545', N'2018-10-30 14:47:01.0000000', N'1663023749615980545', N'2018-11-06 12:38:23.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663327', N'1663456260372434953', N'SpringBean', N'1', N'1', N'SpringBean', N'1663023749615980545', N'2018-08-20 15:00:31.0000000', N'1663023749615980545', N'2018-08-24 12:36:33.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663328', N'1663456260372434946', N'其他', N'other', N'6', N'其他', N'1663023749615980545', N'2018-09-30 23:55:59.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663329', N'1663456260372434946', N'导入', N'import', N'8', N'导入', N'1663023749615980545', N'2018-09-30 23:56:44.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663330', N'1663456260372434952', N'150', N'150', N'4', N'', N'1663023749615980545', N'2019-04-22 15:18:46.0000000', N'1663023749615980545', N'2019-04-22 15:29:22.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663331', N'1663456260372434952', N'100', N'100', N'3', N'', N'1663023749615980545', N'2019-04-22 11:33:15.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663332', N'1663456260372434956', N'失败', N'-1', N'1', N'失败', N'1663023749615980545', N'2018-09-28 13:15:39.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663333', N'1663456260372434956', N'退出', N'0', N'0', N'退出', N'1663023749615980545', N'2018-09-28 13:15:54.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663334', N'1663456260372434957', N'自定义', N'5', N'5', N'', N'1663023749615980545', N'2019-11-29 14:36:04.0000000', N'1663023749615980545', N'2019-11-29 14:36:18.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict] ([id], [gid], [label], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663457371812663335', N'1663456260372434947', N'否', N'false', N'1', N'', N'1663023749615980545', N'2018-10-30 14:41:31.0000000', NULL, NULL, N'0')
GO


-- ----------------------------
-- Table structure for sys_dict_group
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_group]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict_group]
GO

CREATE TABLE [dbo].[sys_dict_group] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [remarks] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_dict_group] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_group',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_group',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_group',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_group',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典分组',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_group'
GO


-- ----------------------------
-- Records of sys_dict_group
-- ----------------------------
INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434946', N'日志类型', N'logType', N'日志类型', N'1663023749615980545', N'2018-09-30 23:54:01.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434947', N'是否', N'sf_bool', N'是否', N'1663023749615980545', N'2018-10-30 14:41:17.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434948', N'性别', N'sex', N'性别', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434949', N'是否', N'sf', N'是否', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434950', N'用户登陆状态', N'onlinestatus', N'', NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434951', N'短信业务类型', N'business_type', N'短信业务类型', NULL, NULL, N'1663023749615980545', N'2022-08-10 22:06:30.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434952', N'分页数组', N'page', N'', N'1663023749615980545', N'2019-04-22 11:31:44.0000000', N'1663023749615980545', N'2019-05-04 14:13:28.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434953', N'任务加载方式', N'load_way', N'任务加载方式', NULL, NULL, N'1663023749615980545', N'2022-08-10 22:04:26.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434954', N'菜单类型', N'menu_type', N'', NULL, NULL, N'1663023749615980545', N'2022-08-10 22:02:18.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434955', N'执行策略', N'misfirePolicy', N'执行策略', N'1663023749615980545', N'2018-09-17 15:37:42.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434956', N'登陆状态', N'login_status', N'登陆状态', NULL, NULL, N'1663023749615980545', N'2022-08-10 21:58:14.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict_group] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663456260372434957', N'数据权限类型', N'data_rule_type', N'', NULL, NULL, N'1663023749615980545', N'2022-08-10 22:01:41.0000000', N'0')
GO


-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_login_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_login_log]
GO

CREATE TABLE [dbo].[sys_login_log] (
  [id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [login_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [login_ip] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [login_location] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [browser] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [os] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [msg] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [login_time] datetime2(7)  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_login_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'login_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录IP地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'login_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录地点',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'login_location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'browser'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作系统',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'os'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录状态（0成功 1失败）',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'提示消息',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'msg'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'login_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统访问记录',
'SCHEMA', N'dbo',
'TABLE', N'sys_login_log'
GO


-- ----------------------------
-- Records of sys_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_menu]
GO

CREATE TABLE [dbo].[sys_menu] (
  [id] bigint  NOT NULL,
  [permission] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [path] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] bigint  NULL,
  [parent_ids] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [enabled] tinyint  NOT NULL,
  [sort] int  NOT NULL,
  [icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [component] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'permission'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'路径编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父编号列表',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'parent_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否显示',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'enabled'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'前端资源路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'component'
GO

EXEC sp_addextendedproperty
'MS_Description', N'摘要',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'remarks'
GO


-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1549408397974773761', N'sys:dict:group:update', N'更新分组', N'3', NULL, N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2022-07-19 22:58:43.0000000', N'1663023749615980545', N'2022-07-19 22:59:27.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1549408489905528833', N'sys:dict:detail', N'详情', N'3', NULL, N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'10', NULL, NULL, NULL, N'1663023749615980545', N'2022-07-19 22:59:05.0000000', N'1663023749615980545', N'2022-07-19 23:02:02.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1557356242427564033', NULL, N'白名单', N'2', N'/demo/whiteList', N'1663365529964253303', N'1663365529964253303/', N'1', N'70', N'', N'views/demo/whiteList/whiteList', NULL, N'1663023749615980545', N'2022-08-10 21:20:37.0000000', N'1663023749615980545', N'2023-04-08 19:41:07.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1558803448019828737', N'sys:role:list', N'列表', N'3', NULL, N'1663365529964253354', N'1663365529964253298/1663365529964253354/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2022-08-14 21:11:18.0000000', N'1663023749615980545', N'2023-06-04 12:33:51.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1558804463733456897', N'sms:template:detail', N'详情', N'3', NULL, N'1663365529964253238', N'1663365529964253254/1663365529964253238/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2022-08-14 21:15:20.0000000', N'1663023749615980545', N'2022-08-14 21:15:36.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1610855510867922946', NULL, N'基础数据', N'1', NULL, NULL, NULL, N'1', N'0', N'User', NULL, NULL, N'1663023749615980545', N'2023-01-05 12:27:37.0000000', N'1663023749615980545', N'2023-06-04 22:48:11.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1624619960418627586', N'sys:menu:detail', N'详情', N'3', NULL, N'1663365529964253249', N'1663365529964253298/1663365529964253249/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2023-02-12 12:02:37.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253186', N'oss:attachment:update', N'更新', N'3', NULL, N'1663365529964253201', N'1663365529964253233/1663365529964253201/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:45:43.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253190', N'sms:sendlog:delete', N'删除', N'3', NULL, N'1663365529964253243', N'1663365529964253254/1663365529964253243/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:52:00.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253191', N'sys:role:update', N'更新', N'3', NULL, N'1663365529964253354', N'1663365529964253298/1663365529964253354/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:52:50.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253192', N'test:expandtable:expandtable:detail', N'详情', N'3', NULL, N'1663365529964253304', N'1663365529964253303/1663365529964253304/', N'1', N'6', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-26 18:20:05.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253193', N'sys:organization:detail', N'详情', N'3', N'', N'1663365529964253270', N'1610855510867922946/1663365529964253270/', N'1', N'2', NULL, N'', NULL, N'1663023749615980545', N'2021-01-16 22:32:49.0000000', N'1663023749615980545', N'2021-01-16 22:33:16.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253194', N'monitor:login:log:list', N'查询', N'3', NULL, N'1663365529964253227', N'1663365529964253233/1663365529964253227/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:46:46.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253195', N'sys:datarule:detail', N'详情', N'3', NULL, N'1663365529964253294', N'1663365529964253298/1663365529964253294/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-29 03:25:16.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253196', N'sys:datarule:delete', N'删除', N'3', NULL, N'1663365529964253294', N'1663365529964253298/1663365529964253294/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-29 03:25:16.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253199', N'sys:user:export', N'导出', N'3', NULL, N'1663365529964253317', N'1610855510867922946/1663365529964253317/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:45:14.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253200', N'sms:template:delete', N'删除', N'3', NULL, N'1663365529964253238', N'1663365529964253254/1663365529964253238/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:51:09.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253201', NULL, N'附件日志', N'2', N'/monitor/attachment', N'1663365529964253233', N'1663365529964253233/', N'1', N'0', NULL, N'views/monitor/attachment/index', NULL, N'1663023749615980545', N'2018-10-31 21:23:20.0000000', N'1663023749615980545', N'2019-06-28 17:48:40.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253202', N'test:expandtable:expandtable:update', N'更新', N'3', NULL, N'1663365529964253304', N'1663365529964253303/1663365529964253304/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-04 13:21:02.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253204', NULL, N'树形表格', N'2', N'/demo/treeTable', N'1663365529964253303', N'1663365529964253303/', N'1', N'3', NULL, N'views/demo/treeTable/treeTableList', NULL, N'1663023749615980545', N'2019-04-23 13:17:20.0000000', N'1663023749615980545', N'2019-06-28 17:52:21.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253205', NULL, N'表格级联', N'2', N'/demo/twoTable', N'1663365529964253303', N'1663365529964253303/', N'1', N'2', NULL, N'views/demo/twoTable/twoTable', NULL, N'1663023749615980545', N'2019-04-23 13:21:24.0000000', N'1663023749615980545', N'2019-06-28 17:52:13.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253206', N'sys:tenant:list', N'列表', N'3', NULL, N'1663365529964253292', N'1610855510867922946/1663365529964253292/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-28 06:30:20.0000000', N'1663023749615980545', N'2021-12-16 16:42:44.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253207', NULL, N'源码更新', N'2', N'https://gitee.com/sunseagear/wind', N'1663365529964253218', N'1663365529964253218/', N'1', N'0', NULL, N'', NULL, N'1663023749615980545', N'2018-10-31 21:08:00.0000000', N'1663023749615980545', N'2019-05-04 18:25:25.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253208', N'task:schedule:job:add', N'添加', N'3', NULL, N'1663365529964253214', N'1663365529964253276/1663365529964253214/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:48:05.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253209', N'task:schedule:job:list', N'查询', N'3', NULL, N'1663365529964253214', N'1663365529964253276/1663365529964253214/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:48:05.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253210', N'test:expandtable:expandtable:delete', N'删除', N'3', NULL, N'1663365529964253304', N'1663365529964253303/1663365529964253304/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-04 13:21:02.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253211', N'oss:attachment:list', N'查询', N'3', NULL, N'1663365529964253201', N'1663365529964253233/1663365529964253201/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:45:43.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253212', N'sys:dict:add', N'添加', N'3', NULL, N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'7', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:28.0000000', N'1663023749615980545', N'2022-07-19 22:57:32.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253213', N'test:table:table:import', N'导入', N'3', NULL, N'1663365529964253335', N'1663365529964253303/1663365529964253335/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 22:36:12.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253214', NULL, N'计划任务', N'2', N'/tool/task', N'1663365529964253276', N'1663365529964253276/', N'1', N'1', NULL, N'views/tool/task/index', NULL, N'1663023749615980545', N'2018-10-31 21:03:13.0000000', N'1663023749615980545', N'2019-06-28 17:49:40.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253215', N'test:table:table:update', N'更新', N'3', NULL, N'1663365529964253335', N'1663365529964253303/1663365529964253335/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 22:36:12.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253216', N'sys:menu:update', N'更新', N'3', NULL, N'1663365529964253249', N'1663365529964253298/1663365529964253249/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:04.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253217', NULL, N'左树右表', N'2', N'/demo/treeAndTable', N'1663365529964253303', N'1663365529964253303/', N'1', N'4', NULL, N'views/demo/treeAndTable/treeAndTableList', NULL, N'1663023749615980545', N'2019-04-23 13:20:39.0000000', N'1663023749615980545', N'2019-11-13 16:36:25.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253218', NULL, N'系统帮助', N'1', N'', NULL, NULL, N'1', N'70', N'Help', N'', NULL, N'1663023749615980545', N'2018-10-31 21:05:04.0000000', N'1663023749615980545', N'2023-02-07 22:30:54.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253219', N'sys:organization:list', N'查询', N'3', NULL, N'1663365529964253270', N'1610855510867922946/1663365529964253270/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:03:07.0000000', N'1663023749615980545', N'2021-01-16 22:33:15.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253220', N'sys:tenant:detail', N'详情', N'3', NULL, N'1663365529964253292', N'1610855510867922946/1663365529964253292/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-28 06:30:20.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253221', N'sys:user:list', N'查询', N'3', NULL, N'1663365529964253317', N'1610855510867922946/1663365529964253317/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:45:14.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253222', N'test:twotable:car:detail', N'详情', N'3', NULL, N'1663365529964253205', N'1663365529964253303/1663365529964253205/', N'1', N'14', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-26 18:18:01.0000000', N'1663023749615980545', N'2019-05-26 18:18:35.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253223', NULL, N'网络通信', N'2', N'/demo/websocket', N'1663365529964253303', N'1663365529964253303/', N'1', N'6', NULL, N'views/demo/websocket/websocket', NULL, N'1663023749615980545', N'2019-11-23 23:15:29.0000000', N'1663023749615980545', N'2019-11-23 23:17:36.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253224', N'sys:dict:delete', N'删除', N'3', NULL, N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'9', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:28.0000000', N'1663023749615980545', N'2022-07-19 22:57:47.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253225', N'sys:config:update', N'更新', N'3', NULL, N'1663365529964253346', N'1663365529964253298/1663365529964253346/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-23 16:43:32.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253226', N'test:treetable:treetable:detail', N'详情', N'3', NULL, N'1663365529964253204', N'1663365529964253303/1663365529964253204/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-26 18:18:54.0000000', N'1663023749615980545', N'2022-07-19 22:00:52.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253227', NULL, N'登陆日志', N'2', N'/monitor/loginLog', N'1663365529964253233', N'1663365529964253233/', N'1', N'1', NULL, N'views/monitor/log/login', NULL, N'1663023749615980545', N'2018-10-31 21:24:25.0000000', N'1663023749615980545', N'2019-06-28 17:48:48.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253228', N'test:twotable:car:import', N'导入', N'3', NULL, N'1663365529964253205', N'1663365529964253303/1663365529964253205/', N'1', N'12', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 23:03:51.0000000', N'1663023749615980545', N'2019-05-26 18:18:32.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253230', N'sys:dict:group:delete', N'删除分组', N'3', N'', N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'4', NULL, N'', NULL, N'1663023749615980545', N'2018-11-06 12:41:12.0000000', N'1663023749615980545', N'2022-07-19 22:57:21.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253231', N'sys:dict:list', N'查询', N'3', NULL, N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'6', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:28.0000000', N'1663023749615980545', N'2022-07-19 22:57:30.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253232', N'task:schedule:job:refresh:job', N'刷新任务', N'3', N'', N'1663365529964253214', N'1663365529964253276/1663365529964253214/', N'1', N'5', NULL, N'', N'刷新任务', N'1663023749615980545', N'2018-11-06 12:55:19.0000000', N'1663023749615980545', N'2023-07-02 19:01:21.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253233', NULL, N'系统监控', N'1', N'', NULL, NULL, N'1', N'40', N'Monitor', N'', NULL, N'1663023749615980545', N'2018-10-31 21:13:37.0000000', N'1663023749615980545', N'2023-02-07 22:30:21.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253234', N'sys:dict:group:list', N'查询分组', N'3', N'', N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'1', NULL, N'', NULL, N'1663023749615980545', N'2018-11-06 12:39:48.0000000', N'1663023749615980545', N'2022-07-19 22:57:13.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253235', N'sys:menu:generate:button', N'生成按钮', N'3', N'', N'1663365529964253249', N'1663365529964253298/1663365529964253249/', N'1', N'0', NULL, N'', N'备注', N'1663023749615980545', N'2018-11-06 12:01:31.0000000', N'1663023749615980545', N'2018-11-06 12:01:52.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253236', N'sys:datarule:list', N'列表', N'3', NULL, N'1663365529964253294', N'1663365529964253298/1663365529964253294/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-29 03:25:16.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253237', N'test:expandtable:expandtable:list', N'查询', N'3', NULL, N'1663365529964253304', N'1663365529964253303/1663365529964253304/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-04 13:21:02.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253238', NULL, N'短信模板', N'2', N'/sms/template', N'1663365529964253254', N'1663365529964253254/', N'1', N'0', NULL, N'views/sms/template/index', NULL, N'1663023749615980545', N'2018-11-09 10:50:14.0000000', N'1663023749615980545', N'2019-06-28 17:46:54.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253239', N'sys:config:detail', N'详情', N'3', NULL, N'1663365529964253346', N'1663365529964253298/1663365529964253346/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-23 16:43:32.0000000', N'1663023749615980545', N'2020-02-16 04:12:19.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253241', N'test:expandtable:expandtable:import', N'导入', N'3', NULL, N'1663365529964253304', N'1663365529964253303/1663365529964253304/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-04 13:21:02.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253243', NULL, N'发送日志', N'2', N'/sms/sendlog', N'1663365529964253254', N'1663365529964253254/', N'1', N'1', NULL, N'views/sms/send/log', NULL, N'1663023749615980545', N'2018-11-09 10:50:47.0000000', N'1663023749615980545', N'2019-06-28 17:47:06.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253244', N'sys:datarule:add', N'添加', N'3', NULL, N'1663365529964253294', N'1663365529964253298/1663365529964253294/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-29 03:25:16.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253245', N'test:treeandtable:treeandtable:import', N'导入', N'3', NULL, N'1663365529964253217', N'1663365529964253303/1663365529964253217/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-03 01:33:11.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253247', N'sys:user:add', N'添加', N'3', NULL, N'1663365529964253317', N'1610855510867922946/1663365529964253317/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:45:14.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253249', NULL, N'菜单管理', N'2', N'/sys/menu', N'1663365529964253298', N'1663365529964253298/', N'1', N'30', NULL, N'views/sys/menu/menuList', N'菜单管理', N'1663023749615980545', N'2018-10-30 15:12:53.0000000', N'1663023749615980545', N'2019-06-26 21:16:55.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253250', N'monitor:operation:log:list', N'查询', N'3', NULL, N'1663365529964253361', N'1663365529964253233/1663365529964253361/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:47:04.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253251', NULL, N'在线用户', N'2', N'/monitor/onlineUser', N'1663365529964253233', N'1663365529964253233/', N'1', N'3', NULL, N'views/monitor/user/online', NULL, N'1663023749615980545', N'2018-10-31 21:24:02.0000000', N'1663023749615980545', N'2019-06-28 17:49:11.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253253', N'test:twotable:car:delete', N'删除', N'3', NULL, N'1663365529964253205', N'1663365529964253303/1663365529964253205/', N'1', N'10', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 23:03:51.0000000', N'1663023749615980545', N'2019-05-26 18:18:28.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253254', NULL, N'短信管理', N'1', N'', NULL, NULL, N'1', N'20', N'ChatLineSquare', N'', NULL, N'1663023749615980545', N'2018-11-09 10:49:28.0000000', N'1663023749615980545', N'2023-02-07 22:28:51.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253256', N'test:table:table:export', N'导出', N'3', NULL, N'1663365529964253335', N'1663365529964253303/1663365529964253335/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 22:36:12.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253257', NULL, N'字典管理', N'2', N'/sys/dict', N'1663365529964253298', N'1663365529964253298/', N'1', N'60', NULL, N'views/sys/dict/index', NULL, N'1663023749615980545', N'2018-10-30 15:12:18.0000000', N'1663023749615980545', N'2019-06-26 21:17:14.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253258', N'task:schedule:job:update', N'更新', N'3', NULL, N'1663365529964253214', N'1663365529964253276/1663365529964253214/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:48:05.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253259', N'sys:tenant:update', N'更新', N'3', NULL, N'1663365529964253292', N'1610855510867922946/1663365529964253292/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-28 06:30:20.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253260', NULL, N'综合表单', N'2', N'/demo/tableView/:id/:title', N'1663365529964253303', N'1663365529964253303/', N'0', N'0', N'', N'views/demo/table/tableView', NULL, N'1663023749615980545', N'2020-12-14 23:37:26.0000000', N'1663023749615980545', N'2023-04-08 19:49:07.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253261', N'monitor:operation:log:delete', N'删除', N'3', NULL, N'1663365529964253361', N'1663365529964253233/1663365529964253361/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:47:04.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253262', N'test:table:table:delete', N'删除', N'3', NULL, N'1663365529964253335', N'1663365529964253303/1663365529964253335/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 22:36:12.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253263', NULL, N'邮件管理', N'1', N'', NULL, NULL, N'1', N'30', N'Message', N'', NULL, N'1663023749615980545', N'2018-11-09 10:22:57.0000000', N'1663023749615980545', N'2023-02-07 22:29:46.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253264', N'sms:template:list', N'查询', N'3', NULL, N'1663365529964253238', N'1663365529964253254/1663365529964253238/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:51:09.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253265', N'test:treetable:treetable:update', N'更新', N'3', NULL, N'1663365529964253204', N'1663365529964253303/1663365529964253204/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-02 21:45:49.0000000', N'1663023749615980545', N'2022-07-19 22:00:48.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253266', N'sys:organization:add', N'添加', N'3', NULL, N'1663365529964253270', N'1610855510867922946/1663365529964253270/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:03:07.0000000', N'1663023749615980545', N'2021-01-16 22:33:19.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253267', NULL, N'任务日志', N'2', N'/tool/tasklog', N'1663365529964253276', N'1663365529964253276/', N'1', N'2', NULL, N'views/tool/task/log', NULL, N'1663023749615980545', N'2018-10-31 21:03:34.0000000', N'1663023749615980545', N'2019-06-28 17:49:51.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253268', N'sys:user:update', N'更新', N'3', NULL, N'1663365529964253317', N'1610855510867922946/1663365529964253317/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:45:14.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253269', N'sys:user:change:password', N'修改密码', N'3', N'', N'1663365529964253317', N'1610855510867922946/1663365529964253317/', N'1', N'0', NULL, N'', N'修改密码', N'1663023749615980545', N'2018-11-06 15:02:30.0000000', N'1663023749615980545', N'2018-11-06 15:03:03.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253270', NULL, N'组织机构', N'2', N'/sys/organization', N'1610855510867922946', N'1610855510867922946/', N'1', N'50', N'', N'views/sys/organization/organizationList', NULL, N'1663023749615980545', N'2018-10-30 15:09:52.0000000', N'1663023749615980545', N'2023-04-05 21:57:57.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253272', N'sys:organization:delete', N'删除', N'3', NULL, N'1663365529964253270', N'1610855510867922946/1663365529964253270/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:03:07.0000000', N'1663023749615980545', N'2021-01-16 22:33:24.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253273', NULL, N'发送日志', N'2', N'/email/sendlog', N'1663365529964253263', N'1663365529964253263/', N'1', N'1', NULL, N'views/email/send/log', NULL, N'1663023749615980545', N'2018-11-09 10:24:04.0000000', N'1663023749615980545', N'2019-06-28 17:48:06.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253274', N'test:treetable:treetable:delete', N'删除', N'3', NULL, N'1663365529964253204', N'1663365529964253303/1663365529964253204/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-02 21:45:49.0000000', N'1663023749615980545', N'2022-07-19 22:00:49.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253275', N'task:schedule:job:change:job:status', N'变更状态', N'3', N'', N'1663365529964253214', N'1663365529964253276/1663365529964253214/', N'1', N'6', NULL, N'', N'变更状态', N'1663023749615980545', N'2018-11-06 13:00:19.0000000', N'1663023749615980545', N'2023-07-02 19:01:27.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253276', NULL, N'定时任务', N'1', N'', NULL, NULL, N'1', N'60', N'Clock', N'', NULL, N'1663023749615980545', N'2018-10-31 21:02:41.0000000', N'1663023749615980545', N'2023-02-07 22:30:35.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253277', N'sys:menu:add', N'添加', N'3', NULL, N'1663365529964253249', N'1663365529964253298/1663365529964253249/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:04.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253278', N'test:expandtable:expandtable:add', N'添加', N'3', NULL, N'1663365529964253304', N'1663365529964253303/1663365529964253304/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-04 13:21:02.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253279', N'monitor:login:log:export', N'导出', N'3', N'', N'1663365529964253227', N'1663365529964253233/1663365529964253227/', N'1', N'0', NULL, N'', NULL, N'1663023749615980545', N'2018-11-06 14:07:10.0000000', N'1663023749615980545', N'2018-11-06 14:07:26.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253280', N'task:schedule:joblog:list', N'查询', N'3', NULL, N'1663365529964253267', N'1663365529964253276/1663365529964253267/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:48:25.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253282', N'sys:dict:group:add', N'添加分组', N'3', N'', N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'2', NULL, N'', NULL, N'1663023749615980545', N'2018-11-06 12:39:23.0000000', N'1663023749615980545', N'2022-07-19 22:57:15.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253283', N'test:twotable:car:list', N'查询', N'3', NULL, N'1663365529964253205', N'1663365529964253303/1663365529964253205/', N'1', N'7', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 23:03:51.0000000', N'1663023749615980545', N'2019-05-26 18:18:18.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253284', N'sys:tenant:delete', N'删除', N'3', NULL, N'1663365529964253292', N'1610855510867922946/1663365529964253292/', N'1', N'5', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-28 06:30:20.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253285', N'task:schedule:joblog:delete', N'删除', N'3', NULL, N'1663365529964253267', N'1663365529964253276/1663365529964253267/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:48:25.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253287', N'test:treeandtable:treeandtable:add', N'添加', N'3', NULL, N'1663365529964253217', N'1663365529964253303/1663365529964253217/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-03 01:33:11.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253289', N'test:treetable:treetable:list', N'查询', N'3', NULL, N'1663365529964253204', N'1663365529964253303/1663365529964253204/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-02 21:45:49.0000000', N'1663023749615980545', N'2022-07-19 22:00:47.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253290', N'task:schedule:job:delete', N'删除', N'3', NULL, N'1663365529964253214', N'1663365529964253276/1663365529964253214/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:48:05.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253291', N'test:treeandtable:treeandtable:update', N'更新', N'3', NULL, N'1663365529964253217', N'1663365529964253303/1663365529964253217/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-03 01:33:11.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253292', NULL, N'租户管理', N'2', N'/sys/tenant', N'1610855510867922946', N'1610855510867922946/', N'1', N'0', N'', N'views/sys/tenant/tenantList', NULL, N'1663023749615980545', N'2019-11-28 06:30:20.0000000', N'1663023749615980545', N'2023-04-05 21:54:09.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253293', N'test:twotable:car:update', N'更新', N'3', NULL, N'1663365529964253205', N'1663365529964253303/1663365529964253205/', N'1', N'9', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 23:03:51.0000000', N'1663023749615980545', N'2019-05-26 18:18:26.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253294', NULL, N'数据权限', N'2', N'/sys/dataRule', N'1663365529964253298', N'1663365529964253298/', N'1', N'40', NULL, N'views/sys/dataRule/dataRuleList', NULL, N'1663023749615980545', N'2019-11-29 03:25:16.0000000', N'1663023749615980545', N'2019-12-04 09:06:43.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253295', N'sys:menu:delete', N'删除', N'3', NULL, N'1663365529964253249', N'1663365529964253298/1663365529964253249/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:04.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253296', NULL, N'仓颉介绍', N'2', N'/document', N'1663365529964253351', N'1663365529964253351/', N'1', N'0', NULL, N'views/documentation/index', NULL, N'1663023749615980545', N'2021-11-07 14:58:10.0000000', N'1663023749615980545', N'2023-01-05 12:35:41.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253298', NULL, N'系统设置', N'1', N'', NULL, NULL, N'1', N'10', N'Setting', N'', N'系统设置', N'1663023749615980545', N'2018-10-30 15:08:45.0000000', N'1663023749615980545', N'2023-02-07 22:28:24.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253299', N'sys:role:delete', N'删除', N'3', NULL, N'1663365529964253354', N'1663365529964253298/1663365529964253354/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:52:50.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253301', N'test:treeandtable:treeandtable:detail', N'详情', N'3', NULL, N'1663365529964253217', N'1663365529964253303/1663365529964253217/', N'1', N'6', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-26 18:19:40.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253302', N'sms:template:update', N'更新', N'3', NULL, N'1663365529964253238', N'1663365529964253254/1663365529964253238/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:51:09.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253303', NULL, N'代码样例', N'1', N'', NULL, NULL, N'1', N'80', N'Mouse', N'', NULL, N'1663023749615980545', N'2019-04-23 10:56:31.0000000', N'1663023749615980545', N'2023-02-07 22:34:37.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253304', NULL, N'表格展开', N'2', N'/demo/expendTable', N'1663365529964253303', N'1663365529964253303/', N'1', N'5', NULL, N'views/demo/expandTable/expandTableList', NULL, N'1663023749615980545', N'2019-04-23 13:24:13.0000000', N'1663023749615980545', N'2019-11-13 14:56:40.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253305', NULL, N'开发文档', N'2', N'http://www.sunseagear.com', N'1663365529964253218', N'1663365529964253218/', N'1', N'1', NULL, N'', NULL, N'1663023749615980545', N'2018-10-31 21:05:48.0000000', N'1663023749615980545', N'2019-05-04 18:24:53.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253306', N'test:twotable:car:add', N'添加', N'3', NULL, N'1663365529964253205', N'1663365529964253303/1663365529964253205/', N'1', N'8', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 23:03:51.0000000', N'1663023749615980545', N'2019-05-26 18:18:24.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253307', N'sys:datarule:update', N'更新', N'3', NULL, N'1663365529964253294', N'1663365529964253298/1663365529964253294/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-29 03:25:16.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253308', N'sys:user:role', N'设置角色', N'3', N'', N'1663365529964253317', N'1610855510867922946/1663365529964253317/', N'1', N'0', NULL, N'', N'设置角色', N'1663023749615980545', N'2018-11-06 15:02:55.0000000', N'1663023749615980545', N'2022-07-19 21:16:46.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253310', N'test:table:table:add', N'添加', N'3', NULL, N'1663365529964253335', N'1663365529964253303/1663365529964253335/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 22:36:12.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253312', N'test:treeandtable:treeandtable:list', N'查询', N'3', NULL, N'1663365529964253217', N'1663365529964253303/1663365529964253217/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-03 01:33:11.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253313', NULL, N'仓颉平台', N'2', N'http://sunseagear.com:8081/admin/', N'1663365529964253351', N'1663365529964253351/', N'1', N'10', NULL, N'', NULL, N'1663023749615980545', N'2020-10-30 23:26:58.0000000', N'1663023749615980545', N'2023-01-05 12:38:52.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253314', N'sys:dict:group:detail', N'分组详情', N'3', N'', N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'5', NULL, N'', NULL, N'1663023749615980545', N'2018-11-06 12:39:04.0000000', N'1663023749615980545', N'2022-07-19 22:59:23.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253315', N'email:template:add', N'添加', N'3', NULL, N'1663365529964253329', N'1663365529964253263/1663365529964253329/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:24:49.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253316', N'oss:attachment:delete', N'删除', N'3', NULL, N'1663365529964253201', N'1663365529964253233/1663365529964253201/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:45:43.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253317', NULL, N'用户管理', N'2', N'/sys/user', N'1610855510867922946', N'1610855510867922946/', N'1', N'10', N'', N'views/sys/user/userList', NULL, N'1663023749615980545', N'2018-10-30 15:10:29.0000000', N'1663023749615980545', N'2023-04-05 21:54:21.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253319', N'sys:user:role:list', N'用户角色列表', N'3', N'', N'1663365529964253354', N'1663365529964253298/1663365529964253354/', N'1', N'0', NULL, N'', N'用户角色', N'1663023749615980545', N'2018-11-06 15:03:49.0000000', N'1663023749615980545', N'2022-07-19 21:17:05.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253320', N'test:treeandtable:treeandtable:delete', N'删除', N'3', NULL, N'1663365529964253217', N'1663365529964253303/1663365529964253217/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-03 01:33:11.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253321', N'sms:template:add', N'添加', N'3', NULL, N'1663365529964253238', N'1663365529964253254/1663365529964253238/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:51:09.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253322', N'email:template:update', N'更新', N'3', NULL, N'1663365529964253329', N'1663365529964253263/1663365529964253329/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:24:49.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253323', N'test:table:table:list', N'查询', N'3', NULL, N'1663365529964253335', N'1663365529964253303/1663365529964253335/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 22:36:12.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253324', N'monitor:login:log:delete', N'删除', N'3', NULL, N'1663365529964253227', N'1663365529964253233/1663365529964253227/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:46:46.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253325', NULL, N'网页嵌套', N'2', N'/demo/iFrame', N'1663365529964253303', N'1663365529964253303/', N'1', N'80', NULL, N'views/demo/framePage/framePage', NULL, N'1663023749615980545', N'2022-01-13 19:59:23.0000000', N'1663023749615980545', N'2023-04-08 19:40:39.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253326', N'sys:role:add', N'添加', N'3', NULL, N'1663365529964253354', N'1663365529964253298/1663365529964253354/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:52:50.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253328', N'sys:organization:update', N'更新', N'3', NULL, N'1663365529964253270', N'1610855510867922946/1663365529964253270/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:03:07.0000000', N'1663023749615980545', N'2021-01-16 22:33:20.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253329', NULL, N'邮件模板', N'2', N'/email/template', N'1663365529964253263', N'1663365529964253263/', N'1', N'0', NULL, N'views/email/template/index', NULL, N'1663023749615980545', N'2018-11-09 10:23:33.0000000', N'1663023749615980545', N'2019-06-28 17:47:53.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253331', N'sys:user:delete', N'删除', N'3', NULL, N'1663365529964253317', N'1610855510867922946/1663365529964253317/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:45:14.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253332', N'test:expandtable:expandtable:export', N'导出', N'3', NULL, N'1663365529964253304', N'1663365529964253303/1663365529964253304/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-04 13:21:02.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253334', N'sys:menu:list', N'查询', N'3', NULL, N'1663365529964253249', N'1663365529964253298/1663365529964253249/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:04.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253335', NULL, N'综合表格', N'2', N'/demo/table', N'1663365529964253303', N'1663365529964253303/', N'1', N'1', N'', N'views/demo/table/tableList', NULL, N'1663023749615980545', N'2019-04-23 10:59:35.0000000', N'1663023749615980545', N'2023-04-08 19:49:18.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253336', N'email:template:delete', N'删除', N'3', NULL, N'1663365529964253329', N'1663365529964253263/1663365529964253329/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:24:49.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253337', N'sys:tenant:add', N'添加', N'3', NULL, N'1663365529964253292', N'1610855510867922946/1663365529964253292/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2019-11-28 06:30:20.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253338', N'test:table:table:detail', N'详情', N'3', NULL, N'1663365529964253335', N'1663365529964253303/1663365529964253335/', N'1', N'6', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-25 13:23:00.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253339', N'oss:attachment:add', N'添加', N'3', NULL, N'1663365529964253201', N'1663365529964253233/1663365529964253201/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 12:45:43.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253340', N'test:treeandtable:treeandtable:export', N'导出', N'3', NULL, N'1663365529964253217', N'1663365529964253303/1663365529964253217/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-03 01:33:11.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253341', N'sys:config:delete', N'删除', N'3', NULL, N'1663365529964253346', N'1663365529964253298/1663365529964253346/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2020-02-16 04:12:46.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253342', N'sys:config:add', N'添加', N'3', NULL, N'1663365529964253346', N'1663365529964253298/1663365529964253346/', N'1', N'3', NULL, NULL, NULL, N'1663023749615980545', N'2020-02-16 04:12:46.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253343', N'sys:role:detail', N'详情', N'3', NULL, N'1663365529964253354', N'1663365529964253298/1663365529964253354/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:52:50.0000000', N'1663023749615980545', N'2022-08-14 21:09:12.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253344', N'monitor:user:online:list', N'查询', N'3', NULL, N'1663365529964253251', N'1663365529964253233/1663365529964253251/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 12:59:22.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253345', N'email:template:list', N'查询', N'3', NULL, N'1663365529964253329', N'1663365529964253263/1663365529964253329/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:24:49.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253346', NULL, N'系统参数', N'2', N'/sys/config', N'1663365529964253298', N'1663365529964253298/', N'1', N'70', NULL, N'views/sys/config/configList', NULL, N'1663023749615980545', N'2019-05-23 16:42:13.0000000', N'1663023749615980545', N'2019-06-26 21:17:22.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253350', N'sms:sendlog:list', N'查询', N'3', NULL, N'1663365529964253243', N'1663365529964253254/1663365529964253243/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:52:00.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253351', NULL, N'代码生成', N'1', NULL, NULL, NULL, N'1', N'100', N'EditPen', NULL, NULL, N'1663023749615980545', N'2021-11-07 14:56:50.0000000', N'1663023749615980545', N'2023-02-07 22:35:22.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253352', N'email:sendlog:delete', N'删除', N'3', NULL, N'1663365529964253273', N'1663365529964253263/1663365529964253273/', N'1', N'1', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:25:07.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253353', N'test:treetable:treetable:add', N'添加', N'3', NULL, N'1663365529964253204', N'1663365529964253303/1663365529964253204/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2019-05-02 21:45:49.0000000', N'1663023749615980545', N'2022-07-19 22:00:47.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253354', NULL, N'角色管理', N'2', N'/sys/role', N'1663365529964253298', N'1663365529964253298/', N'1', N'20', N'', N'views/sys/role/roleList', NULL, N'1663023749615980545', N'2018-10-30 15:11:36.0000000', N'1663023749615980545', N'2023-04-05 21:58:10.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253355', N'test:twotable:car:export', N'导出', N'3', NULL, N'1663365529964253205', N'1663365529964253303/1663365529964253205/', N'1', N'11', NULL, NULL, NULL, N'1663023749615980545', N'2019-04-24 23:03:51.0000000', N'1663023749615980545', N'2019-05-26 18:18:30.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253356', N'email:sendlog:list', N'查询', N'3', NULL, N'1663365529964253273', N'1663365529964253263/1663365529964253273/', N'1', N'0', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-09 10:25:07.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253358', N'sys:dict:update', N'更新', N'3', NULL, N'1663365529964253257', N'1663365529964253298/1663365529964253257/', N'1', N'8', NULL, NULL, NULL, N'1663023749615980545', N'2018-11-06 11:53:28.0000000', N'1663023749615980545', N'2022-07-19 22:57:33.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253361', NULL, N'操作日志', N'2', N'/monitor/operationLog', N'1663365529964253233', N'1663365529964253233/', N'1', N'2', NULL, N'views/monitor/log/operation', NULL, N'1663023749615980545', N'2018-10-31 21:25:04.0000000', N'1663023749615980545', N'2019-06-28 17:49:00.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1663365529964253362', N'sys:config:list', N'列表', N'3', NULL, N'1663365529964253346', N'1663365529964253298/1663365529964253346/', N'1', N'2', NULL, NULL, NULL, N'1663023749615980545', N'2020-02-16 04:12:46.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1675459436728778753', N'task:schedule:job:detail', N'详情', N'3', NULL, N'1663365529964253214', N'1663365529964253276/1663365529964253214/', N'1', N'4', NULL, NULL, NULL, N'1663023749615980545', N'2023-07-02 19:00:33.0000000', N'1663023749615980545', N'2023-07-02 19:01:20.0000000', N'0')
GO

INSERT INTO [dbo].[sys_menu] ([id], [permission], [name], [type], [path], [parent_id], [parent_ids], [enabled], [sort], [icon], [component], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag]) VALUES (N'1681201929550647297', NULL, N'组件样例', N'2', N'/demo/componentSample', N'1663365529964253303', N'1663365529964253303/', N'1', N'90', NULL, N'views/demo/componentSample/componentSample', NULL, N'1663023749615980545', N'2023-07-18 15:19:10.0000000', N'1663023749615980545', N'2023-07-18 15:19:47.0000000', N'0')
GO


-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_operation_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_operation_log]
GO

CREATE TABLE [dbo].[sys_operation_log] (
  [id] bigint  NOT NULL,
  [title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [log_type] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime2(7)  NULL,
  [request_uri] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [browser] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [os] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [operation_ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [operation_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [params] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [msg] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_operation_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作方式',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'log_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求URL',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'request_uri'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'browser'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作系统',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'os'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作IP地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'operation_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作人',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'operation_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作方法',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'params'
GO

EXEC sp_addextendedproperty
'MS_Description', N'异常信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'msg'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志表',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log'
GO


-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_organization]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_organization]
GO

CREATE TABLE [dbo].[sys_organization] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_ids] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_organization] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'parent_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'tenant_id'
GO


-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663381481179189249', N'西游网络', NULL, NULL, N'1663023749615980545', N'2019-12-17 11:07:53.0000000', NULL, NULL, N'0', NULL, N'89013384')
GO

INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663381481179189250', N'飞廉', N'1663381481179189254', N'1663381481179189254/', N'1663023749615980545', N'2020-01-25 21:26:56.0000000', N'1663023749615980545', N'2020-05-26 23:25:41.0000000', N'0', NULL, N'00000000')
GO

INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663381481179189254', N'山海', NULL, NULL, N'1663023749615980545', N'2020-07-21 14:30:26.0000000', N'1663023749615980545', N'2023-04-01 21:39:18.0000000', N'0', N'根目录', N'00000000')
GO

INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663381481179189258', N'后台开发', N'1663381481179189250', N'1663381481179189254/1663381481179189250/', N'1663023749615980545', N'2020-01-25 21:27:12.0000000', NULL, NULL, N'0', NULL, N'00000000')
GO

INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663381481179189261', N'仓颉', N'1663381481179189254', N'1663381481179189254/', N'1663023749615980545', N'2020-05-26 23:25:53.0000000', NULL, NULL, N'0', NULL, N'00000000')
GO

INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663381481179189262', N'九州科技', NULL, NULL, N'1663023749615980545', N'2019-12-16 09:28:50.0000000', NULL, NULL, N'0', NULL, N'86865558')
GO


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_sys] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [usable] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'英文名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否系统数据',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'is_sys'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可用',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'usable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role'
GO


-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO [dbo].[sys_role] ([id], [name], [code], [is_sys], [usable], [create_by], [create_date], [update_by], [update_date], [remarks], [del_flag], [tenant_id]) VALUES (N'1663079893877329920', N'总系统管理员', N'admin', N'1', N'1', NULL, NULL, N'1663023749615980545', N'2023-06-04 11:35:23.0000000', NULL, N'0', N'00000000')
GO

INSERT INTO [dbo].[sys_role] ([id], [name], [code], [is_sys], [usable], [create_by], [create_date], [update_by], [update_date], [remarks], [del_flag], [tenant_id]) VALUES (N'1663079893877329921', N'系统管理员', N'tenantAdmin', N'0', N'1', NULL, NULL, N'1663023749615980545', N'2023-01-06 15:28:17.0000000', NULL, N'0', N'00000000')
GO

INSERT INTO [dbo].[sys_role] ([id], [name], [code], [is_sys], [usable], [create_by], [create_date], [update_by], [update_date], [remarks], [del_flag], [tenant_id]) VALUES (N'1663079893877329922', N'用户', N'user', N'1', N'1', NULL, NULL, N'1663023749615980545', N'2021-09-13 12:15:28.0000000', NULL, N'0', N'00000000')
GO

INSERT INTO [dbo].[sys_role] ([id], [name], [code], [is_sys], [usable], [create_by], [create_date], [update_by], [update_date], [remarks], [del_flag], [tenant_id]) VALUES (N'1663079893877329923', N'山海角色', N'shanhairole', N'0', N'1', N'49cc47c9a5646525345621673dbc10fc', N'2019-12-17 10:56:41.0000000', NULL, NULL, NULL, N'0', N'35798760')
GO


-- ----------------------------
-- Table structure for sys_role_data_rule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_data_rule]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_data_rule]
GO

CREATE TABLE [dbo].[sys_role_data_rule] (
  [id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [data_rule_category] int  NULL,
  [data_rule_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [role_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_role_data_rule] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_rule',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限类型(1:数据权限、2:接口权限)',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_rule',
'COLUMN', N'data_rule_category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_rule',
'COLUMN', N'data_rule_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_rule',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色数据权限关联表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_rule'
GO


-- ----------------------------
-- Records of sys_role_data_rule
-- ----------------------------
INSERT INTO [dbo].[sys_role_data_rule] ([id], [data_rule_category], [data_rule_id], [role_id]) VALUES (N'1668023749616085506', NULL, N'dfc71dbeb4f8f15f9e00a945c177d2a6', N'1663079893877329921')
GO


-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_menu]
GO

CREATE TABLE [dbo].[sys_role_menu] (
  [id] bigint  NOT NULL,
  [menu_id] bigint  NOT NULL,
  [role_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_role_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色-菜单',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu'
GO


-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863250986192899', N'1610862820189229058', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863250986192901', N'1610860408535732226', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634097', N'1610863032928522242', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634098', N'1610863032928522243', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634099', N'1610863032928522244', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634100', N'1610863032928522245', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634101', N'1610863032928522246', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634102', N'1610861695650189313', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634103', N'1610861695650189314', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634104', N'1610861695650189315', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634105', N'1610861695650189316', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863329893634106', N'1610861695650189317', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384130179073', N'1610863032928522242', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287937', N'1610863032928522243', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287938', N'1610863032928522244', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287939', N'1610863032928522245', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287940', N'1610863032928522246', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287941', N'1610861695650189313', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287942', N'1610861695650189314', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287943', N'1610861695650189315', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287944', N'1610861695650189316', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863384197287945', N'1610861695650189317', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863426882719745', N'1610862820189229058', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1610863426949828610', N'1610860408535732226', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026806071392', N'1610861695650189313', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026806071393', N'1610861695650189314', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026806071394', N'1610861695650189315', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026806071395', N'1610861695650189316', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180161', N'1610861695650189317', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180162', N'1610863032928522242', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180163', N'1610863032928522243', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180164', N'1610863032928522244', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180165', N'1610863032928522245', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180166', N'1610863032928522246', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180167', N'1663365529964253271', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180168', N'1663365529964253240', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180169', N'1663365529964253300', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180170', N'1663365529964253248', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180171', N'1663365529964253188', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180172', N'1663365529964253327', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180173', N'1663365529964253189', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180174', N'1663365529964253281', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180175', N'1663365529964253318', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180176', N'1663365529964253297', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180177', N'1663365529964253288', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180178', N'1663365529964253246', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180179', N'1663365529964253309', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180180', N'1663365529964253286', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180181', N'1663365529964253242', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180182', N'1663365529964253198', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180183', N'1663365529964253359', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180184', N'1663365529964253255', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180185', N'1663365529964253187', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1624620026873180186', N'1663365529964253357', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1641302325632712709', N'1641300914740150273', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1641302325632712720', N'1663365529964253333', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1641302325641101314', N'1663365529964253203', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1641302325641101315', N'1663365529964253360', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1641302325641101316', N'1663365529964253229', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1641302325641101317', N'1610860408535732226', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1641302325641101318', N'1610862820189229058', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761058855342093', N'1663365529964253330', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761058855342094', N'1663365529964253252', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761058855342095', N'1663365529964253349', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761058855342096', N'1663365529964253347', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761058855342097', N'1663365529964253197', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761058855342098', N'1663365529964253311', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761058855342099', N'1663365529964253348', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761280889212936', N'1663365529964253330', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761280889212937', N'1663365529964253252', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761280889212938', N'1663365529964253349', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761280889212939', N'1663365529964253347', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761280889212940', N'1663365529964253197', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761280889212941', N'1663365529964253311', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1665761280897601537', N'1663365529964253348', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675459702702178317', N'1663365529964253330', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675459702702178318', N'1663365529964253252', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675459702710566913', N'1663365529964253349', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675459702710566914', N'1663365529964253347', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675459702710566915', N'1663365529964253197', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675459702710566916', N'1663365529964253311', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675459702710566917', N'1663365529964253348', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819714', N'1663365529964253206', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819715', N'1663365529964253220', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819716', N'1663365529964253337', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819717', N'1663365529964253259', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819718', N'1663365529964253284', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819719', N'1663365529964253221', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819720', N'1663365529964253269', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819721', N'1663365529964253308', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819722', N'1663365529964253247', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819723', N'1663365529964253268', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819724', N'1663365529964253331', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819725', N'1663365529964253199', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819726', N'1663365529964253219', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819727', N'1663365529964253193', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819728', N'1663365529964253266', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819729', N'1663365529964253328', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819730', N'1663365529964253272', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819731', N'1558803448019828737', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819732', N'1663365529964253319', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819733', N'1663365529964253343', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819734', N'1663365529964253326', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819735', N'1663365529964253191', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819736', N'1663365529964253299', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819737', N'1624619960418627586', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819738', N'1663365529964253235', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819739', N'1663365529964253334', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819740', N'1663365529964253277', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819741', N'1663365529964253216', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819742', N'1663365529964253295', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819743', N'1663365529964253236', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819744', N'1663365529964253195', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819745', N'1663365529964253244', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819746', N'1663365529964253307', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819747', N'1663365529964253196', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819748', N'1663365529964253234', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819749', N'1663365529964253282', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819750', N'1549408397974773761', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819751', N'1663365529964253230', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819752', N'1663365529964253314', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819753', N'1663365529964253231', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819754', N'1663365529964253212', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819755', N'1663365529964253358', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819756', N'1663365529964253224', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819757', N'1549408489905528833', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819758', N'1663365529964253239', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819759', N'1663365529964253225', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819760', N'1663365529964253362', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819761', N'1663365529964253342', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819762', N'1663365529964253341', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819763', N'1663365529964253264', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819764', N'1663365529964253321', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819765', N'1663365529964253302', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819766', N'1663365529964253200', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819767', N'1558804463733456897', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819768', N'1663365529964253350', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819769', N'1663365529964253190', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819770', N'1663365529964253345', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819771', N'1663365529964253315', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819772', N'1663365529964253322', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819773', N'1663365529964253336', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819774', N'1663365529964253356', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819775', N'1663365529964253352', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819776', N'1663365529964253211', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544824819777', N'1663365529964253339', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122882', N'1663365529964253186', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122883', N'1663365529964253316', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122884', N'1663365529964253194', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122885', N'1663365529964253279', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122886', N'1663365529964253324', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122887', N'1663365529964253250', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122888', N'1663365529964253261', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122889', N'1663365529964253344', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122890', N'1663365529964253209', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122891', N'1663365529964253208', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122892', N'1663365529964253290', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122893', N'1663365529964253258', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122894', N'1675459436728778753', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122895', N'1663365529964253232', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122896', N'1663365529964253275', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122897', N'1663365529964253280', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122898', N'1663365529964253285', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122899', N'1663365529964253323', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122900', N'1663365529964253310', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122901', N'1663365529964253215', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122902', N'1663365529964253262', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122903', N'1663365529964253256', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122904', N'1663365529964253213', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122905', N'1663365529964253338', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122906', N'1663365529964253283', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122907', N'1663365529964253306', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122908', N'1663365529964253293', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122909', N'1663365529964253253', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122910', N'1663365529964253355', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122911', N'1663365529964253228', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122912', N'1663365529964253222', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122913', N'1663365529964253289', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122914', N'1663365529964253353', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122915', N'1663365529964253265', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122916', N'1663365529964253274', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122917', N'1663365529964253226', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122918', N'1663365529964253312', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122919', N'1663365529964253287', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122920', N'1663365529964253291', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122921', N'1663365529964253320', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122922', N'1663365529964253340', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122923', N'1663365529964253245', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122924', N'1663365529964253301', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122925', N'1663365529964253237', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122926', N'1663365529964253278', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122927', N'1663365529964253202', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122928', N'1663365529964253210', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122929', N'1663365529964253332', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122930', N'1663365529964253241', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464544896122931', N'1663365529964253192', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999553', N'1663365529964253221', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999554', N'1663365529964253308', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999555', N'1663365529964253269', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999556', N'1663365529964253247', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999557', N'1663365529964253268', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999558', N'1663365529964253331', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999559', N'1663365529964253199', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999560', N'1663365529964253219', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999561', N'1663365529964253193', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999562', N'1663365529964253266', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999563', N'1663365529964253328', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999564', N'1663365529964253272', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999565', N'1663365529964253343', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999566', N'1558803448019828737', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999567', N'1663365529964253319', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999568', N'1663365529964253326', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999569', N'1663365529964253191', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999570', N'1663365529964253299', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999571', N'1663365529964253236', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999572', N'1663365529964253195', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999573', N'1663365529964253244', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999574', N'1663365529964253307', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999575', N'1663365529964253196', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999576', N'1663365529964253239', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999577', N'1663365529964253225', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999578', N'1663365529964253362', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999579', N'1663365529964253342', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999580', N'1663365529964253341', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999581', N'1663365529964253264', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999582', N'1663365529964253321', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999583', N'1663365529964253302', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999584', N'1663365529964253200', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999585', N'1663365529964253350', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999586', N'1663365529964253190', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999587', N'1663365529964253345', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999588', N'1663365529964253315', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999589', N'1663365529964253322', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999590', N'1663365529964253336', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999591', N'1663365529964253356', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999592', N'1663365529964253352', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999593', N'1663365529964253209', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999594', N'1663365529964253208', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999595', N'1663365529964253290', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999596', N'1663365529964253258', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999597', N'1663365529964253232', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999598', N'1663365529964253275', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999599', N'1663365529964253280', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999600', N'1663365529964253285', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999601', N'1663365529964253323', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999602', N'1663365529964253310', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999603', N'1663365529964253215', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999604', N'1663365529964253262', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999605', N'1663365529964253256', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999606', N'1663365529964253213', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999607', N'1663365529964253338', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999608', N'1663365529964253283', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999609', N'1663365529964253306', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999610', N'1663365529964253293', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999611', N'1663365529964253253', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999612', N'1663365529964253355', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999613', N'1663365529964253228', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999614', N'1663365529964253222', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999615', N'1663365529964253289', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999616', N'1663365529964253353', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999617', N'1663365529964253265', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999618', N'1663365529964253274', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999619', N'1663365529964253226', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999620', N'1663365529964253312', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999621', N'1663365529964253287', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999622', N'1663365529964253291', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999623', N'1663365529964253320', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999624', N'1663365529964253340', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999625', N'1663365529964253245', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999626', N'1663365529964253301', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999627', N'1663365529964253237', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999628', N'1663365529964253278', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999629', N'1663365529964253202', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999630', N'1663365529964253210', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999631', N'1663365529964253332', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999632', N'1663365529964253241', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464599182999633', N'1663365529964253192', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464625997185026', N'1663365529964253323', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626009767938', N'1663365529964253310', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626009767939', N'1663365529964253215', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626009767940', N'1663365529964253262', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626009767941', N'1663365529964253256', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962241', N'1663365529964253213', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962242', N'1663365529964253338', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962243', N'1663365529964253283', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962244', N'1663365529964253306', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962245', N'1663365529964253293', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962246', N'1663365529964253253', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962247', N'1663365529964253355', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962248', N'1663365529964253228', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962249', N'1663365529964253222', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962250', N'1663365529964253289', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962251', N'1663365529964253353', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626013962252', N'1663365529964253265', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350850', N'1663365529964253274', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350851', N'1663365529964253226', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350852', N'1663365529964253312', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350853', N'1663365529964253287', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350854', N'1663365529964253291', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350855', N'1663365529964253320', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350856', N'1663365529964253340', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350857', N'1663365529964253245', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350858', N'1663365529964253301', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350859', N'1663365529964253237', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626022350860', N'1663365529964253278', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626030739458', N'1663365529964253202', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626030739459', N'1663365529964253210', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626030739460', N'1663365529964253332', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626030739461', N'1663365529964253241', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1675464626030739462', N'1663365529964253192', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536066', N'1663365529964253292', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536067', N'1663365529964253317', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536068', N'1663365529964253270', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536069', N'1663365529964253354', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536070', N'1663365529964253249', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536071', N'1663365529964253294', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536072', N'1663365529964253257', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536073', N'1663365529964253346', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536074', N'1663365529964253238', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536075', N'1663365529964253243', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536076', N'1663365529964253329', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536077', N'1663365529964253273', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536078', N'1663365529964253201', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536079', N'1663365529964253227', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536080', N'1663365529964253361', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998408536081', N'1663365529964253251', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839234', N'1663365529964253214', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839235', N'1663365529964253267', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839236', N'1663365529964253207', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839237', N'1663365529964253305', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839238', N'1663365529964253260', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839239', N'1663365529964253335', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839240', N'1663365529964253205', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839241', N'1663365529964253204', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839242', N'1663365529964253217', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839243', N'1663365529964253304', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839244', N'1663365529964253223', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839245', N'1557356242427564033', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839246', N'1663365529964253325', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839247', N'1681201929550647297', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839248', N'1663365529964253296', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681201998479839249', N'1663365529964253313', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202024983646210', N'1663365529964253317', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202024983646211', N'1663365529964253270', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202024983646212', N'1663365529964253354', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202024983646213', N'1663365529964253294', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202024983646214', N'1663365529964253346', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755073', N'1663365529964253260', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755074', N'1663365529964253335', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755075', N'1663365529964253205', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755076', N'1663365529964253204', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755077', N'1663365529964253217', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755078', N'1663365529964253304', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755079', N'1663365529964253223', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025050755080', N'1557356242427564033', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025067532289', N'1663365529964253325', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202025067532290', N'1681201929550647297', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902145', N'1663365529964253207', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902146', N'1663365529964253305', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902147', N'1663365529964253260', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902148', N'1663365529964253335', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902149', N'1663365529964253205', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902150', N'1663365529964253204', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902151', N'1663365529964253217', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902152', N'1663365529964253304', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902153', N'1663365529964253223', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902154', N'1557356242427564033', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902155', N'1663365529964253325', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902156', N'1681201929550647297', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902157', N'1663365529964253296', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_role_menu] ([id], [menu_id], [role_id]) VALUES (N'1681202043056902158', N'1663365529964253313', N'1663079893877329922')
GO


-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_tenant]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_tenant]
GO

CREATE TABLE [dbo].[sys_tenant] (
  [id] bigint  NOT NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [remarks] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [contact] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [phone] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [user_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_tenant] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'update_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'contact'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户管理',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant'
GO


-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO [dbo].[sys_tenant] ([id], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id], [contact], [phone], [name], [user_id]) VALUES (N'1663439105979453442', N'1663023749615980545', N'2019-12-16 09:28:50.0000000', NULL, NULL, N'0', NULL, N'86865558', N'boss2', N'13311111111', N'九州科技', N'1663023894747287553')
GO

INSERT INTO [dbo].[sys_tenant] ([id], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id], [contact], [phone], [name], [user_id]) VALUES (N'1663439105979453443', N'1663023749615980545', N'2019-11-29 14:43:01.0000000', N'1663023749615980545', N'2020-05-26 22:46:44.0000000', N'0', NULL, N'00000000', N'boss', N'13111111111', N'山海科技', N'1663023749615980545')
GO

INSERT INTO [dbo].[sys_tenant] ([id], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id], [contact], [phone], [name], [user_id]) VALUES (N'1663439105979453444', N'1663023749615980500', N'2019-12-17 11:08:08.0000000', N'1663023749615980545', N'2023-06-04 23:30:08.0000000', N'0', NULL, N'89013384', N'boss3', N'13311111111', N'西游网络', N'1663023525526900737')
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [id] bigint  NOT NULL,
  [realname] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [username] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [portrait] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] bigint  NULL,
  [organization_id] bigint  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'真实名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'realname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'portrait'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮件',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系电话',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户的状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属组织ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'organization_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'tenant_id'
GO


-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO [dbo].[sys_user] ([id], [realname], [username], [portrait], [password], [email], [phone], [status], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [organization_id], [tenant_id]) VALUES (N'1663023525526900737', N'西游网络', N'xiyounet', NULL, N'$2a$10$YR./pKoH4bSVjbf0h7wpwuSzHo0DSvqbTJ3365pTKVeI.eYNOTKRG', NULL, N'13311111111', N'1', NULL, NULL, NULL, NULL, N'0', NULL, N'1663381481179189249', N'89013384')
GO

INSERT INTO [dbo].[sys_user] ([id], [realname], [username], [portrait], [password], [email], [phone], [status], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [organization_id], [tenant_id]) VALUES (N'1663023617734479873', N'白泽', N'baize', NULL, N'$2a$10$EoD2p2zkTEOUqY6GpR0LSugi3kliQlaN2Dm1mEe/7/1VG/JJUXO6y', NULL, N'13211111111', N'0', NULL, N'1663023749615980545', N'2023-06-05 00:19:24.0000000', NULL, N'0', NULL, N'1663381481179189250', N'00000000')
GO

INSERT INTO [dbo].[sys_user] ([id], [realname], [username], [portrait], [password], [email], [phone], [status], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [organization_id], [tenant_id]) VALUES (N'1663023749615980545', N'系统管理员', N'admin', NULL, N'$2a$10$YR./pKoH4bSVjbf0h7wpwuSzHo0DSvqbTJ3365pTKVeI.eYNOTKRG', N'wind@sunseagear.com', N'13111111111', N'1', N'2019-04-16 01:08:19.0000000', N'1663023828695388161', N'2023-03-30 12:21:58.0000000', NULL, N'0', N'1663023749615980545', N'1663381481179189254', N'00000000')
GO

INSERT INTO [dbo].[sys_user] ([id], [realname], [username], [portrait], [password], [email], [phone], [status], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [organization_id], [tenant_id]) VALUES (N'1663023894747287553', N'九州科技', N'jiuzhoutech', NULL, N'$2a$10$YR./pKoH4bSVjbf0h7wpwuSzHo0DSvqbTJ3365pTKVeI.eYNOTKRG', NULL, N'13311111111', N'1', NULL, NULL, NULL, NULL, N'0', NULL, N'1663381481179189262', N'86865558')
GO

INSERT INTO [dbo].[sys_user] ([id], [realname], [username], [portrait], [password], [email], [phone], [status], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [organization_id], [tenant_id]) VALUES (N'1663024156618657794', N'帝江(hong)', N'dihong', NULL, N'$2a$10$YR./pKoH4bSVjbf0h7wpwuSzHo0DSvqbTJ3365pTKVeI.eYNOTKRG', NULL, N'13311111111', N'1', NULL, N'1663023828695388161', N'2023-03-31 15:57:09.0000000', NULL, N'0', NULL, N'1663381481179189261', N'00000000')
GO


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_role]
GO

CREATE TABLE [dbo].[sys_user_role] (
  [id] bigint  NOT NULL,
  [user_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [role_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户-角色',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role'
GO


-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'1640980158086180866', N'1663023617734479873', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'1663384694984937474', N'1663023525526900737', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'1663384694984937476', N'1663024156618657794', N'1663079893877329921')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'1663384694984937477', N'1663023617734479873', N'1663079893877329922')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'1663384694984937481', N'1663023749615980545', N'1663079893877329920')
GO

INSERT INTO [dbo].[sys_user_role] ([id], [user_id], [role_id]) VALUES (N'1663384694984937491', N'1663023894747287553', N'1663079893877329921')
GO


-- ----------------------------
-- Table structure for task_schedule_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[task_schedule_job]') AND type IN ('U'))
	DROP TABLE [dbo].[task_schedule_job]
GO

CREATE TABLE [dbo].[task_schedule_job] (
  [id] bigint  NOT NULL,
  [create_date] datetime2(7)  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [update_date] datetime2(7)  NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [load_way] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [execute_class] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_group] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_status] nchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [description] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_concurrent] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [misfire_policy] nvarchar(4) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_params] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cron_expression] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[task_schedule_job] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'update_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'加载任务方式',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'load_way'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'job_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Spring bean',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'execute_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务分组',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'job_group'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务状态',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'job_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务描述',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务是否有状态',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'is_concurrent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行策略',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'misfire_policy'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求参数',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'method_params'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务调用的方法名',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'cron表达式',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job',
'COLUMN', N'cron_expression'
GO


-- ----------------------------
-- Records of task_schedule_job
-- ----------------------------
INSERT INTO [dbo].[task_schedule_job] ([id], [create_date], [create_by], [update_date], [update_by], [load_way], [job_name], [execute_class], [job_group], [job_status], [description], [is_concurrent], [misfire_policy], [method_params], [method_name], [cron_expression]) VALUES (N'1668023749616085507', NULL, NULL, NULL, NULL, N'1', N'短信修复发送定时任务', N'smsTask', N'sys', N'0 ', N'测试任务', N'0', N'3', N'', N'run', N'0/10 * * * * ?')
GO

INSERT INTO [dbo].[task_schedule_job] ([id], [create_date], [create_by], [update_date], [update_by], [load_way], [job_name], [execute_class], [job_group], [job_status], [description], [is_concurrent], [misfire_policy], [method_params], [method_name], [cron_expression]) VALUES (N'1668023749616085508', NULL, NULL, NULL, NULL, N'1', N'日志清除', N'logTask', N'system', N'1 ', N'', N'1', N'', N'', N'run', N'0 0 0 * * ? *')
GO

INSERT INTO [dbo].[task_schedule_job] ([id], [create_date], [create_by], [update_date], [update_by], [load_way], [job_name], [execute_class], [job_group], [job_status], [description], [is_concurrent], [misfire_policy], [method_params], [method_name], [cron_expression]) VALUES (N'1668023749616085509', NULL, NULL, NULL, NULL, N'1', N'邮件修复发送定时任务', N'emailTask', N'sys', N'0 ', N'', N'0', NULL, N'', N'run', N'0/10 * * * * ?')
GO


-- ----------------------------
-- Table structure for task_schedule_job_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[task_schedule_job_log]') AND type IN ('U'))
	DROP TABLE [dbo].[task_schedule_job_log]
GO

CREATE TABLE [dbo].[task_schedule_job_log] (
  [id] bigint  NOT NULL,
  [job_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_group] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [execute_class] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_params] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_message] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [exception_info] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[task_schedule_job_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务日志ID',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名称',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'job_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务组名',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'job_group'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务方法',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法参数',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'method_params'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志信息',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'job_message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行状态（0正常 1失败）',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'异常信息',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'exception_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务调度日志表',
'SCHEMA', N'dbo',
'TABLE', N'task_schedule_job_log'
GO


-- ----------------------------
-- Records of task_schedule_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for test_car
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_car]') AND type IN ('U'))
	DROP TABLE [dbo].[test_car]
GO

CREATE TABLE [dbo].[test_car] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [remarks] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[test_car] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'test_car',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'test_car',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'品牌代码',
'SCHEMA', N'dbo',
'TABLE', N'test_car',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'test_car',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'test_car',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典分组',
'SCHEMA', N'dbo',
'TABLE', N'test_car'
GO


-- ----------------------------
-- Records of test_car
-- ----------------------------
INSERT INTO [dbo].[test_car] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1663389260077993985', N'哈弗', N'002', N'阿三大声道', N'1663023749615980545', N'2019-04-26 23:45:59.0000000', N'1663023749615980545', N'2023-04-06 16:13:43.0000000', N'0', N'00000000')
GO

INSERT INTO [dbo].[test_car] ([id], [name], [code], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1663389260077993986', N'比亚迪', N'001', N'', N'1663023749615980545', N'2019-04-26 23:37:16.0000000', NULL, NULL, N'0', N'00000000')
GO


-- ----------------------------
-- Table structure for test_car_model
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_car_model]') AND type IN ('U'))
	DROP TABLE [dbo].[test_car_model]
GO

CREATE TABLE [dbo].[test_car_model] (
  [id] bigint  NOT NULL,
  [car_id] bigint  NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [value] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [remarks] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[test_car_model] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'test_car_model',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'汽车',
'SCHEMA', N'dbo',
'TABLE', N'test_car_model',
'COLUMN', N'car_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'型号名',
'SCHEMA', N'dbo',
'TABLE', N'test_car_model',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'型号代码',
'SCHEMA', N'dbo',
'TABLE', N'test_car_model',
'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'test_car_model',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'test_car_model',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据字典',
'SCHEMA', N'dbo',
'TABLE', N'test_car_model'
GO


-- ----------------------------
-- Records of test_car_model
-- ----------------------------
INSERT INTO [dbo].[test_car_model] ([id], [car_id], [name], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1668023749616085501', N'1663389260077993985', N'h9', N'003', N'1', N'', N'1663023749615980545', N'2019-04-27 11:44:05.0000000', N'1663023749615980545', N'2019-04-27 11:48:44.0000000', N'0', N'00000000')
GO

INSERT INTO [dbo].[test_car_model] ([id], [car_id], [name], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1668023749616085502', N'1663389260077993985', N'wey7', N'002', N'1', N'', N'1663023749615980545', N'2019-04-27 00:14:08.0000000', NULL, NULL, N'0', N'00000000')
GO

INSERT INTO [dbo].[test_car_model] ([id], [car_id], [name], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1668023749616085503', N'1663389260077993986', N'唐', N'001', N'1', N'', N'1663023749615980545', N'2019-04-27 11:49:02.0000000', NULL, NULL, N'0', N'00000000')
GO

INSERT INTO [dbo].[test_car_model] ([id], [car_id], [name], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1668023749616085504', N'1663389260077993986', N'汉', N'003', N'3', N'', N'1663023749615980545', N'2019-04-27 11:49:23.0000000', N'1663023749615980545', N'2019-04-27 11:51:33.0000000', N'0', N'00000000')
GO

INSERT INTO [dbo].[test_car_model] ([id], [car_id], [name], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1668023749616085505', N'1663389260077993985', N'h6', N'001', N'1', N'', N'1663023749615980545', N'2019-04-27 00:10:45.0000000', N'1663023749615980545', N'2019-04-27 00:11:45.0000000', N'0', N'00000000')
GO

INSERT INTO [dbo].[test_car_model] ([id], [car_id], [name], [value], [sort], [remarks], [create_by], [create_date], [update_by], [update_date], [del_flag], [tenant_id]) VALUES (N'1668023749616085506', N'1663389260077993986', N'王朝', N'002', N'2', N'', N'1663023749615980545', N'2019-04-27 11:49:10.0000000', N'1663023749615980545', N'2019-04-27 11:51:38.0000000', N'0', N'00000000')
GO


-- ----------------------------
-- Table structure for test_expand_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_expand_table]') AND type IN ('U'))
	DROP TABLE [dbo].[test_expand_table]
GO

CREATE TABLE [dbo].[test_expand_table] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [shop] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [category] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [tag] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [update_date] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [organization_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [image] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[test_expand_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属店铺',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'shop'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品分类',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'店铺地址',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品描述',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标签',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'tag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织ID',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'organization_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图片',
'SCHEMA', N'dbo',
'TABLE', N'test_expand_table',
'COLUMN', N'image'
GO


-- ----------------------------
-- Records of test_expand_table
-- ----------------------------
INSERT INTO [dbo].[test_expand_table] ([id], [name], [shop], [category], [address], [description], [tag], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [organization_id], [tenant_id], [image]) VALUES (N'1663387493693001729', N'平板电脑', N'3C卖场', N'电子产品', N'智能手机卖场', N'大屏幕大尺寸，大有可为', N'大屏，语音助手', N'2020-05-30 22:19:35.0000000', N'1663023749615980545', N'2020-05-30 22:19:52.0000000', NULL, N'0', N'1663023749615980545', NULL, N'00000000', NULL)
GO

INSERT INTO [dbo].[test_expand_table] ([id], [name], [shop], [category], [address], [description], [tag], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [organization_id], [tenant_id], [image]) VALUES (N'1663387493693001730', N'智能手机', N'手机卖场', N'电子产品', N'阿斯达s''d', N'最新的智能手机，最新的配置，最低的价格', N'手机', N'2019-05-04 14:02:11.0000000', N'1663023749615980545', N'2020-05-30 22:18:12.0000000', NULL, N'0', N'1663023749615980545', N'1663381481179189250', N'00000000', NULL)
GO


-- ----------------------------
-- Table structure for test_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_table]') AND type IN ('U'))
	DROP TABLE [dbo].[test_table]
GO

CREATE TABLE [dbo].[test_table] (
  [id] bigint  NOT NULL,
  [title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [author] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [level] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [tag] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [readings] int  NULL,
  [publish_date] datetime2(7)  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_by] bigint  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[test_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'作者',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'author'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'level'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标签',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'tag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'阅读数',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'readings'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布时间',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'publish_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'test_table',
'COLUMN', N'tenant_id'
GO


-- ----------------------------
-- Records of test_table
-- ----------------------------
INSERT INTO [dbo].[test_table] ([id], [title], [author], [type], [level], [content], [status], [tag], [readings], [publish_date], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [tenant_id]) VALUES (N'1641007520890810370', N'测试', N'1663023617734479873', N'china', N'1', NULL, N'published', NULL, NULL, NULL, N'2023-03-29 17:20:56.0000000', NULL, NULL, NULL, N'0', N'1663023749615980545', N'00000000')
GO

INSERT INTO [dbo].[test_table] ([id], [title], [author], [type], [level], [content], [status], [tag], [readings], [publish_date], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [tenant_id]) VALUES (N'1641007520890810371', N'白泽&mdash;&mdash;能言语，晓万物', N'1663023617734479873', N'CN', N'3', N'&lt;p&gt;&lt;strong&gt;&lt;em&gt;白泽&lt;/em&gt;，中国古代神话中的瑞兽。能言语，通万物之情，知鬼神之事，&ldquo;王者有德&rdquo;才出现，能辟除人间一切邪气。《元史》记载：&lt;em&gt;白泽&lt;/em&gt;兽虎首朱发而有角，龙身。《明集礼》记载：&lt;em&gt;白泽&lt;/em&gt;为龙首绿发戴角，四足为飞走状。&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;它知道天下所有鬼怪的名字、形貌和驱除的法术，所以从很早开始，就被当作驱鬼的神兽和祥瑞来供奉，最早记载于葛洪的《抱朴子》中，而非网络传言的《山海经》。尤其到了中古时期，对白泽的尊崇更是隆重。&lt;/p&gt;
&lt;p&gt;当时《白泽图》一书非常流行，到了几乎人手一册的程度。书中记有各种神怪的名字、相貌和驱除的方法，并配有神怪的图画，人们一旦遇到怪物，就会按图索骥加以查找。&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;&lt;img src=&quot;https://p26.toutiaoimg.com/origin/tos-cn-i-qvj2lq49k0/33efbd77982a44b2a93450e8f702db89?from=pc&quot; alt=&quot;网络图片，侵删&quot; width=&quot;800&quot; height=&quot;503&quot; /&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;白泽的传说：&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;传说白泽神兽是陕西西安户县钟馗故里&ldquo;唐&middot;赐福镇宅圣君&rdquo;钟馗的坐骑。钟馗神兽的宋代石雕文物一对，现保存于陕西西安户县渼陂湖畔的《钟馗传》作者王九思的空翠堂别墅门前，据说是国内唯一的一对白泽古石雕。&lt;/p&gt;
&lt;p&gt;人们将画有白泽的图画挂在墙上，或是贴在大门上用来辟邪驱鬼。当时还有做&ldquo;白泽枕&rdquo;的习俗，即做成白泽形象的枕头用于寝卧，其用意也是为了辟邪驱鬼。在军队的舆服装备中，&ldquo;白泽旗&rdquo;也是常见的旗号。人们甚至以&ldquo;白泽&rdquo;来为自己命名，出现了许多叫&ldquo;白泽&rdquo;的人。&lt;/p&gt;', N'published', NULL, NULL, N'2019-04-03 00:37:00.0000000', N'2019-04-24 12:32:38.0000000', N'1663023749615980545', N'2023-03-29 17:12:23.0000000', NULL, N'0', N'1663023749615980545', N'00000000')
GO

INSERT INTO [dbo].[test_table] ([id], [title], [author], [type], [level], [content], [status], [tag], [readings], [publish_date], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [tenant_id]) VALUES (N'1641007520890810372', N'帝江(hong)&mdash;&mdash;无耳无口，却善音律', N'1663023617734479873', N'CN', N'1', N'&lt;p&gt;&lt;strong&gt;帝江&amp;mdash;&amp;mdash;发音hong（二声），也发音jiang&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;先秦时期，《山海经&amp;middot;西山经》记载：又西三百五十里，曰天山，多金、玉，有青、雄黄。英水出焉，而西南流注于汤谷。有神焉，其状如黄囊，赤如丹火，六足四翼，浑敦无面目，是识歌舞，实为帝江也。（再往西三百五十里有座山，名叫天山，山上有很多金和玉，还有石青和雄黄。英水发源于天山，向西南流入汤谷。山中有一位神，他的形状像黄色的皮囊，红如火焰，长着六只脚、四只翅膀，脑袋部位浑沌一团，分不清面目，却会唱歌跳舞，它其实就是帝江 。&lt;/p&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;5&quot;&gt;春秋，《左传&amp;middot;文公十八年》:&amp;ldquo;昔帝鸿氏有不才子，掩义隐贼，好行凶德，丑类恶物，顽嚚不友，是与比周。天下之民谓之浑敦。&amp;rdquo;&lt;/div&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;6&quot;&gt;南齐《文选＜三月三日曲水诗序＞》记载：&amp;ldquo;发参差于王子，传妙靡于帝江。&amp;rdquo;李周翰注：&amp;ldquo;天山有鸟，状赤如丹，是识歌舞，至于妙靡，名帝江&lt;sup class=&quot;sup--normal&quot; data-sup=&quot;2&quot; data-ctrmap=&quot;:2,&quot;&gt;&amp;nbsp;[2]&lt;/sup&gt;&lt;a class=&quot;sup-anchor&quot; name=&quot;ref_[2]_18218009&quot; data-log=&quot;text&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a name=&quot;ref_2&quot;&gt;&lt;/a&gt;。&amp;rdquo;&lt;/div&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;7&quot;&gt;晋代，《山海经图赞》：质则混沌，神则旁通。自然灵照，听不以聪。强为名，号曰（一做日惟、曰在）帝江&lt;sup class=&quot;sup--normal&quot; data-sup=&quot;3&quot; data-ctrmap=&quot;:3,&quot;&gt;&amp;nbsp;[3]&lt;/sup&gt;&lt;a class=&quot;sup-anchor&quot; name=&quot;ref_[3]_18218009&quot; data-log=&quot;text&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a name=&quot;ref_3&quot;&gt;&lt;/a&gt;。&lt;/div&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;8&quot;&gt;唐代，《酉阳杂俎&amp;middot;诺皋记上》：&amp;ldquo;天山有神，是名浑潡，状如橐而光，其光如火，六足重翼，无面目，是识（一曰嗜音）歌舞，实为帝江。&amp;rdquo;&lt;/div&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;9&quot;&gt;清代，《校正》云：&amp;ldquo;江，读如鸿。此云帝江，犹言帝江氏子也&lt;sup class=&quot;sup--normal&quot; data-sup=&quot;4&quot; data-ctrmap=&quot;:4,&quot;&gt;&amp;nbsp;[4]&lt;/sup&gt;&lt;a class=&quot;sup-anchor&quot; name=&quot;ref_[4]_18218009&quot; data-log=&quot;text&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a name=&quot;ref_4&quot;&gt;&lt;/a&gt;。&amp;rdquo;&lt;/div&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;10&quot;&gt;现代《朝花夕拾&amp;middot;阿长与山海经》：&amp;ldquo;但那是我最为心爱的宝书，看起来，确是人面的兽；九头的蛇；一脚的牛；袋子似的帝江&lt;sup class=&quot;sup--normal&quot; data-sup=&quot;14&quot; data-ctrmap=&quot;:14,&quot;&gt;&amp;nbsp;[14]&lt;/sup&gt;&lt;a class=&quot;sup-anchor&quot; name=&quot;ref_[14]_18218009&quot; data-log=&quot;text&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a name=&quot;ref_14&quot;&gt;&lt;/a&gt;。&amp;ldquo;&lt;/div&gt;', N'published', NULL, NULL, N'2019-04-24 00:02:00.0000000', N'2019-04-23 23:20:23.0000000', N'1663023749615980545', N'2023-01-06 11:06:59.0000000', NULL, N'0', N'1663023749615980545', N'00000000')
GO

INSERT INTO [dbo].[test_table] ([id], [title], [author], [type], [level], [content], [status], [tag], [readings], [publish_date], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [tenant_id]) VALUES (N'1641007520890810373', N'西游记', N'1663023525526900737', N'china', N'1', N'&lt;div class=&quot;para&quot; data-pid=&quot;1&quot;&gt;《西游记》是明代吴承恩创作的中国古代第一部浪漫主义&lt;a href=&quot;https://baike.baidu.com/item/%E7%AB%A0%E5%9B%9E%E4%BD%93/11018000?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;11018000&quot; data-log=&quot;summary&quot;&gt;章回体&lt;/a&gt;长篇&lt;a href=&quot;https://baike.baidu.com/item/%E7%A5%9E%E9%AD%94%E5%B0%8F%E8%AF%B4/227665?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;227665&quot; data-log=&quot;summary&quot;&gt;神魔小说&lt;/a&gt;。&lt;sup class=&quot;sup--normal&quot; data-sup=&quot;39&quot; data-ctrmap=&quot;:39,:41,&quot;&gt;&amp;nbsp;[39]&lt;/sup&gt;&lt;a class=&quot;sup-anchor&quot; name=&quot;ref_[39]_5315045&quot; data-log=&quot;summary&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;sup class=&quot;sup--normal&quot; data-sup=&quot;41&quot; data-ctrmap=&quot;:39,:41,&quot;&gt;[41]&lt;/sup&gt;&lt;a class=&quot;sup-anchor&quot; name=&quot;ref_[41]_5315045&quot; data-log=&quot;summary&quot;&gt;&lt;/a&gt;&amp;nbsp;&lt;/div&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;2&quot;&gt;该小说主要讲述了孙悟空出世跟随&lt;a href=&quot;https://baike.baidu.com/item/%E8%8F%A9%E6%8F%90%E7%A5%96%E5%B8%88/5477679?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;5477679&quot; data-log=&quot;summary&quot;&gt;菩提祖师&lt;/a&gt;学艺及大闹&lt;a href=&quot;https://baike.baidu.com/item/%E5%A4%A9%E5%AE%AB/14808?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;14808&quot; data-log=&quot;summary&quot;&gt;天宫&lt;/a&gt;后，遇见了&lt;a href=&quot;https://baike.baidu.com/item/%E5%94%90%E5%83%A7/338052?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;338052&quot; data-log=&quot;summary&quot;&gt;唐僧&lt;/a&gt;、&lt;a href=&quot;https://baike.baidu.com/item/%E7%8C%AA%E5%85%AB%E6%88%92/769?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;769&quot; data-log=&quot;summary&quot;&gt;猪八戒&lt;/a&gt;、&lt;a href=&quot;https://baike.baidu.com/item/%E6%B2%99%E5%83%A7/337868?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;337868&quot; data-log=&quot;summary&quot;&gt;沙僧&lt;/a&gt;和&lt;a href=&quot;https://baike.baidu.com/item/%E7%99%BD%E9%BE%99%E9%A9%AC/3976?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;3976&quot; data-log=&quot;summary&quot;&gt;白龙马&lt;/a&gt;，西行取经，一路上历经艰险，降妖除魔，经历了九九八十一难，终于到达西天见到如来佛祖，最终五圣成真的故事。该小说以&amp;ldquo;玄奘取经&amp;rdquo;这一历史事件为蓝本，经作者的艺术加工，深刻地描绘出明代百姓的社会生活状况。&lt;/div&gt;
&lt;div class=&quot;para&quot; data-pid=&quot;3&quot;&gt;《西游记》是中国神魔小说的经典之作，达到了古代长篇浪漫主义小说的巅峰，与《&lt;a href=&quot;https://baike.baidu.com/item/%E4%B8%89%E5%9B%BD%E6%BC%94%E4%B9%89/5782?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;5782&quot; data-log=&quot;summary&quot;&gt;三国演义&lt;/a&gt;》《&lt;a href=&quot;https://baike.baidu.com/item/%E6%B0%B4%E6%B5%92%E4%BC%A0/348?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;348&quot; data-log=&quot;summary&quot;&gt;水浒传&lt;/a&gt;》《&lt;a href=&quot;https://baike.baidu.com/item/%E7%BA%A2%E6%A5%BC%E6%A2%A6/15311?fromModule=lemma_inlink&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; data-lemmaid=&quot;15311&quot; data-log=&quot;summary&quot;&gt;红楼梦&lt;/a&gt;》并称为中国古典四大名著。《西游记》自问世以来在民间广为流传，各式各样的版本层出不穷。明代刊本有六种，清代刊本、抄本也有七种，典籍所记已佚版本十三种。鸦片战争以后，大量中国古典文学作品被译为西文，《西游记》渐渐传入欧美，被译为英、法、德、意、西、手语、世（世界语）、斯（斯瓦希里语）、俄、捷、罗、波、日、朝、越等语言。&lt;sup class=&quot;sup--normal&quot; data-sup=&quot;1&quot; data-ctrmap=&quot;:1,&quot;&gt;&amp;nbsp;[1]&lt;/sup&gt;&lt;a class=&quot;sup-anchor&quot; name=&quot;ref_[1]_5315045&quot; data-log=&quot;summary&quot;&gt;&lt;/a&gt;&amp;nbsp;&lt;/div&gt;', N'published', NULL, NULL, N'2019-12-17 11:20:00.0000000', N'2019-12-17 11:23:42.0000000', N'1663023525526900737', N'2023-01-06 11:32:26.0000000', NULL, N'0', N'1663023525526900737', N'89013384')
GO


-- ----------------------------
-- Table structure for test_tree_and_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_tree_and_table]') AND type IN ('U'))
	DROP TABLE [dbo].[test_tree_and_table]
GO

CREATE TABLE [dbo].[test_tree_and_table] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [tag] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [area_id] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] bigint  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[test_tree_and_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_and_table',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门名称',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_and_table',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_and_table',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标签',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_and_table',
'COLUMN', N'tag'
GO


-- ----------------------------
-- Records of test_tree_and_table
-- ----------------------------
INSERT INTO [dbo].[test_tree_and_table] ([id], [name], [type], [tag], [area_id], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [tenant_id]) VALUES (N'1663385359920533510', N'市委', N'市委', N'', N'1663385359920533508', NULL, N'1663023749615980545', N'2021-09-13 12:50:12.0000000', NULL, N'0', NULL, N'00000000')
GO

INSERT INTO [dbo].[test_tree_and_table] ([id], [name], [type], [tag], [area_id], [create_date], [update_by], [update_date], [remarks], [del_flag], [create_by], [tenant_id]) VALUES (N'1663385359920533511', N'城管', N'城管', N'阿达是否', N'1663385359920533505', NULL, NULL, NULL, NULL, NULL, NULL, N'00000000')
GO


-- ----------------------------
-- Table structure for test_tree_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_tree_table]') AND type IN ('U'))
	DROP TABLE [dbo].[test_tree_table]
GO

CREATE TABLE [dbo].[test_tree_table] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [geocoding] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [postal_code] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] bigint  NULL,
  [parent_ids] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] bigint  NULL,
  [create_date] datetime2(7)  NULL,
  [update_by] bigint  NULL,
  [update_date] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[test_tree_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构名称',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_table',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否叶子节点',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_table',
'COLUMN', N'geocoding'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_table',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点路径',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_table',
'COLUMN', N'parent_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_table',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'test_tree_table',
'COLUMN', N'tenant_id'
GO


-- ----------------------------
-- Records of test_tree_table
-- ----------------------------
INSERT INTO [dbo].[test_tree_table] ([id], [name], [geocoding], [postal_code], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663385359920533505', N'陕西', N'001001', N'710000', NULL, NULL, N'1663023749615980545', N'2019-05-02 23:33:26.0000000', N'1663023749615980545', N'2019-05-26 18:26:54.0000000', N'0', N'陕西', N'00000000')
GO

INSERT INTO [dbo].[test_tree_table] ([id], [name], [geocoding], [postal_code], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663385359920533506', N'河西', N'1123', N'123123', N'1663385359920533509', N'1663385359920533505/1663385359920533509/', N'1663023749615980545', N'2019-11-13 12:02:21.0000000', NULL, NULL, N'0', NULL, N'00000000')
GO

INSERT INTO [dbo].[test_tree_table] ([id], [name], [geocoding], [postal_code], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663385359920533507', N'雁塔区', N'1111', N'11111', N'1663385359920533508', N'1663385359920533505/1663385359920533508/', N'1663023749615980545', N'2019-11-13 11:14:23.0000000', NULL, NULL, N'0', NULL, N'00000000')
GO

INSERT INTO [dbo].[test_tree_table] ([id], [name], [geocoding], [postal_code], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663385359920533508', N'西安', N'2123165', N'123123', N'1663385359920533505', N'1663385359920533505/', N'1663023749615980545', N'2019-05-02 23:38:28.0000000', N'1663023749615980545', N'2019-05-02 23:49:15.0000000', N'0', N'西安', N'00000000')
GO

INSERT INTO [dbo].[test_tree_table] ([id], [name], [geocoding], [postal_code], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663385359920533509', N'咸阳', N'11111', N'22222', N'1663385359920533505', N'1663385359920533505/', N'1663023749615980545', N'2019-11-13 11:38:14.0000000', NULL, NULL, N'0', N'咸阳', N'00000000')
GO

INSERT INTO [dbo].[test_tree_table] ([id], [name], [geocoding], [postal_code], [parent_id], [parent_ids], [create_by], [create_date], [update_by], [update_date], [del_flag], [remarks], [tenant_id]) VALUES (N'1663729842822504449', N'太白里', NULL, NULL, N'1663385359920533507', N'1663385359920533505/1663385359920533508/1663385359920533507/', N'1663023749615980545', N'2023-05-31 10:11:20.0000000', N'1663023749615980545', N'2023-05-31 10:11:57.0000000', N'0', NULL, N'00000000')
GO


-- ----------------------------
-- Primary Key structure for table email_send_log
-- ----------------------------
ALTER TABLE [dbo].[email_send_log] ADD CONSTRAINT [PK__email_se__3213E83F2CDE0D62] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table email_template
-- ----------------------------
ALTER TABLE [dbo].[email_template] ADD CONSTRAINT [PK__email_te__3213E83F6D29814A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table oss_attachment
-- ----------------------------
ALTER TABLE [dbo].[oss_attachment] ADD CONSTRAINT [PK__oss_atta__3213E83FAE4295EC] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sms_send_log
-- ----------------------------
ALTER TABLE [dbo].[sms_send_log] ADD CONSTRAINT [PK__sms_send__3213E83F79D19B80] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sms_template
-- ----------------------------
ALTER TABLE [dbo].[sms_template] ADD CONSTRAINT [PK__sms_temp__3213E83F306B3EF2] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE [dbo].[sys_config] ADD CONSTRAINT [PK__sys_conf__3213E83F320AEC84] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_data_rule
-- ----------------------------
ALTER TABLE [dbo].[sys_data_rule] ADD CONSTRAINT [PK__sys_data__3213E83FB586399A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_dict
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_dict_groupid_key]
ON [dbo].[sys_dict] (
  [gid] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE [dbo].[sys_dict] ADD CONSTRAINT [PK__sys_dict__3213E83F549B2869] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dict_group
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_group] ADD CONSTRAINT [PK__sys_dict__3213E83FB924E099] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_login_log
-- ----------------------------
ALTER TABLE [dbo].[sys_login_log] ADD CONSTRAINT [PK__sys_logi__3213E83FF9D5745B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_menu
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_sys_resource_parent_id]
ON [dbo].[sys_menu] (
  [parent_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_sys_resource_parent_ids]
ON [dbo].[sys_menu] (
  [parent_ids] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD CONSTRAINT [PK__sys_menu__3213E83F160381B8] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_operation_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_log_create_by]
ON [dbo].[sys_operation_log] (
  [create_by] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_log_request_uri]
ON [dbo].[sys_operation_log] (
  [operation_ip] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_log_create_date]
ON [dbo].[sys_operation_log] (
  [create_date] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_operation_log
-- ----------------------------
ALTER TABLE [dbo].[sys_operation_log] ADD CONSTRAINT [PK__sys_oper__3213E83F96BB26F0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_organization
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_parent_id]
ON [dbo].[sys_organization] (
  [parent_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_parent_ids]
ON [dbo].[sys_organization] (
  [parent_ids] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_organization
-- ----------------------------
ALTER TABLE [dbo].[sys_organization] ADD CONSTRAINT [PK__sys_orga__3213E83FDDEBE9E5] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_role_del_flag]
ON [dbo].[sys_role] (
  [del_flag] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_role_enname]
ON [dbo].[sys_role] (
  [code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [PK__sys_role__3213E83F169FA7E1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role_data_rule
-- ----------------------------
ALTER TABLE [dbo].[sys_role_data_rule] ADD CONSTRAINT [PK__sys_role__3213E83FE9D65E25] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_role_menu
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_role_menu_menuid]
ON [dbo].[sys_role_menu] (
  [menu_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_role_menu_roleid]
ON [dbo].[sys_role_menu] (
  [role_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu] ADD CONSTRAINT [PK__sys_role__3213E83F623B1290] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_tenant
-- ----------------------------
ALTER TABLE [dbo].[sys_tenant] ADD CONSTRAINT [PK__sys_tena__3213E83F95AD91A3] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [PK__sys_user__3213E83FD2B1D536] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_user_role
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_user_role_userid]
ON [dbo].[sys_user_role] (
  [user_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_user_role_roleid]
ON [dbo].[sys_user_role] (
  [role_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD CONSTRAINT [PK__sys_user__3213E83FAEE02B05] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table task_schedule_job
-- ----------------------------
ALTER TABLE [dbo].[task_schedule_job] ADD CONSTRAINT [PK__task_sch__3213E83F7E2352ED] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table task_schedule_job_log
-- ----------------------------
ALTER TABLE [dbo].[task_schedule_job_log] ADD CONSTRAINT [PK__task_sch__3213E83F369D5A68] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_car
-- ----------------------------
ALTER TABLE [dbo].[test_car] ADD CONSTRAINT [PK__test_car__3213E83F6EF1C559] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table test_car_model
-- ----------------------------
CREATE NONCLUSTERED INDEX [test_car_model_car_id]
ON [dbo].[test_car_model] (
  [car_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table test_car_model
-- ----------------------------
ALTER TABLE [dbo].[test_car_model] ADD CONSTRAINT [PK__test_car__3213E83F7C908DD2] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_expand_table
-- ----------------------------
ALTER TABLE [dbo].[test_expand_table] ADD CONSTRAINT [PK__test_exp__3213E83FF4817634] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table test_table
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [idx_test_table_title]
ON [dbo].[test_table] (
  [title] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table test_table
-- ----------------------------
ALTER TABLE [dbo].[test_table] ADD CONSTRAINT [PK__test_tab__3213E83F594B6C54] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_tree_and_table
-- ----------------------------
ALTER TABLE [dbo].[test_tree_and_table] ADD CONSTRAINT [PK__test_tre__3213E83FDC351F4E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_tree_table
-- ----------------------------
ALTER TABLE [dbo].[test_tree_table] ADD CONSTRAINT [PK__test_tre__3213E83F3051FC72] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table sys_dict
-- ----------------------------
ALTER TABLE [dbo].[sys_dict] ADD CONSTRAINT [dist_group_id] FOREIGN KEY ([gid]) REFERENCES [dbo].[sys_dict_group] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
