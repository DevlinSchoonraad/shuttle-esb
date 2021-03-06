CREATE TABLE [dbo].[SubscriberMessageTypeRequest](
	[InboxWorkQueueUri] [varchar](65) NOT NULL,
	[MessageType] [varchar](250) NOT NULL,
	[Declined] [int] NOT NULL,
	[DeclinedBy] [varchar](250) NULL,
	[DeclinedReason] [varchar](1500) NULL,
	[DeclinedDate] [datetime] NULL,
CONSTRAINT [PK_SubscriberMessageTypeRequest] PRIMARY KEY CLUSTERED 
(
	[InboxWorkQueueUri] ASC,
	[MessageType] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[SubscriberMessageType](
	[InboxWorkQueueUri] [varchar](65) NOT NULL,
	[MessageType] [varchar](250) NOT NULL,
	[AcceptedBy] [varchar](250) NULL,
	[AcceptedDate] [datetime] NULL,
CONSTRAINT [PK_SubscriberMessageType] PRIMARY KEY CLUSTERED 
(
	[InboxWorkQueueUri] ASC,
	[MessageType] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubscriberMessageTypeRequest] ADD  CONSTRAINT [DF_SubscriberMessageTypeRequest_Declined]  DEFAULT ((0)) FOR [Declined]
GO
