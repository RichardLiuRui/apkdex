.class public Lcom/shunpay210/sdk/SMS210;
.super Ljava/lang/Object;
.source "SMS210.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;,
        Lcom/shunpay210/sdk/SMS210$SMS_ITEM;,
        Lcom/shunpay210/sdk/SMS210$SmsContent;,
        Lcom/shunpay210/sdk/SMS210$SmsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSService"

.field private static m_instance:Lcom/shunpay210/sdk/SMS210;


# instance fields
.field private m_bInited:Z

.field private m_bReadStatus:Z

.field private m_context:Landroid/content/Context;

.field m_handler:Landroid/os/Handler;

.field private m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;

.field private m_receiver:Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;

.field private m_sms:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_startTime:J

.field private m_timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/shunpay210/sdk/SMS210;->m_instance:Lcom/shunpay210/sdk/SMS210;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_receiver:Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;

    .line 40
    iput-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;

    .line 43
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_sms:Ljava/util/Vector;

    .line 45
    iput-boolean v2, p0, Lcom/shunpay210/sdk/SMS210;->m_bInited:Z

    .line 46
    iput-boolean v2, p0, Lcom/shunpay210/sdk/SMS210;->m_bReadStatus:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shunpay210/sdk/SMS210;->m_startTime:J

    .line 57
    new-instance v0, Lcom/shunpay210/sdk/SMS210$1;

    invoke-direct {v0, p0}, Lcom/shunpay210/sdk/SMS210$1;-><init>(Lcom/shunpay210/sdk/SMS210;)V

    iput-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/shunpay210/sdk/SMS210;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/shunpay210/sdk/SMS210;->m_bReadStatus:Z

    return v0
.end method

.method static synthetic access$1(Lcom/shunpay210/sdk/SMS210;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/shunpay210/sdk/SMS210;->m_startTime:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/shunpay210/sdk/SMS210;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/shunpay210/sdk/SMS210;->m_bReadStatus:Z

    return-void
.end method

.method static synthetic access$3(Lcom/shunpay210/sdk/SMS210;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/shunpay210/sdk/SMS210;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_sms:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/shunpay210/sdk/SMS210;)Lcom/shunpay210/sdk/SMS210$SmsListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;

    return-object v0
.end method

.method public static getInstance()Lcom/shunpay210/sdk/SMS210;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/shunpay210/sdk/SMS210;->m_instance:Lcom/shunpay210/sdk/SMS210;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/shunpay210/sdk/SMS210;

    invoke-direct {v0}, Lcom/shunpay210/sdk/SMS210;-><init>()V

    sput-object v0, Lcom/shunpay210/sdk/SMS210;->m_instance:Lcom/shunpay210/sdk/SMS210;

    .line 54
    :cond_0
    sget-object v0, Lcom/shunpay210/sdk/SMS210;->m_instance:Lcom/shunpay210/sdk/SMS210;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 72
    const-string v0, "SMSService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-boolean v0, p0, Lcom/shunpay210/sdk/SMS210;->m_bInited:Z

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;

    .line 77
    new-instance v6, Lcom/shunpay210/sdk/SMS210$SmsContent;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v0}, Lcom/shunpay210/sdk/SMS210$SmsContent;-><init>(Lcom/shunpay210/sdk/SMS210;Landroid/os/Handler;)V

    .line 78
    .local v6, "content":Lcom/shunpay210/sdk/SMS210$SmsContent;
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    new-instance v0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;

    invoke-direct {v0, p0}, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;-><init>(Lcom/shunpay210/sdk/SMS210;)V

    iput-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_receiver:Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;

    .line 81
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "SMS_SEND_ACTIOIN"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v7, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shunpay210/sdk/SMS210;->m_receiver:Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_timer:Ljava/util/Timer;

    .line 85
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_timer:Ljava/util/Timer;

    new-instance v1, Lcom/shunpay210/sdk/SMS210$2;

    invoke-direct {v1, p0}, Lcom/shunpay210/sdk/SMS210$2;-><init>(Lcom/shunpay210/sdk/SMS210;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public onSMSResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;

    invoke-interface {v0, p1}, Lcom/shunpay210/sdk/SMS210$SmsListener;->onSmsResult(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 21
    .param p1, "recvNumber"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "smsType"    # I

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/shunpay210/sdk/SMS210;->m_startTime:J

    .line 104
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/shunpay210/sdk/SMS210;->m_bReadStatus:Z

    .line 106
    new-instance v18, Landroid/content/Intent;

    const-string v3, "SMS_SEND_ACTIOIN"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v18, "itSend":Landroid/content/Intent;
    new-instance v17, Landroid/content/Intent;

    const-string v3, "SMS_DELIVERED_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v17, "itDeliver":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 110
    .local v7, "mSendPI":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 112
    .local v8, "mDeliverPI":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 113
    .local v2, "smsManager":Landroid/telephony/SmsManager;
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 118
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 119
    .local v6, "data":[B
    const/4 v5, 0x0

    .line 120
    .local v5, "port":S
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 123
    .local v19, "pos":I
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 124
    .local v20, "strPort":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v5, v3

    .line 125
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 127
    .end local v19    # "pos":I
    .end local v20    # "strPort":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v5    # "port":S
    .end local v6    # "data":[B
    :cond_1
    return-void

    .line 129
    :catch_0
    move-exception v16

    .line 131
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 132
    .local v15, "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 133
    .local v12, "text":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v9, v2

    move-object/from16 v10, p1

    move-object v13, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 139
    .end local v12    # "text":Ljava/lang/String;
    .end local v15    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 140
    .restart local v15    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 141
    .restart local v12    # "text":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v9, v2

    move-object/from16 v10, p1

    move-object v13, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public setListener(Lcom/shunpay210/sdk/SMS210$SmsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/shunpay210/sdk/SMS210$SmsListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/shunpay210/sdk/SMS210;->m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;

    .line 100
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "SMSService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shunpay210/sdk/SMS210;->m_receiver:Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method
