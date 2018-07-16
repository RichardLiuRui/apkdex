.class public Lcom/zp/mm/api/impl/DefaultSMSCommand;
.super Lcom/zp/mm/api/impl/MultiCommand;
.source "DefaultSMSCommand.java"

# interfaces
.implements Lcom/zp/mm/api/SMSCommand;


# instance fields
.field private final dataPort:S

.field protected failedCommand:Lcom/zp/mm/api/Command;

.field private final isData:Z

.field private final msg:Ljava/lang/String;

.field private final mustSend:Z

.field private final sp:Ljava/lang/String;

.field protected successCommand:Lcom/zp/mm/api/Command;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;ZSZ[Lcom/zp/mm/api/Command;)V
    .locals 0
    .param p1, "sp"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "isData"    # Z
    .param p4, "dataPort"    # S
    .param p5, "mustSend"    # Z
    .param p6, "commands"    # [Lcom/zp/mm/api/Command;

    .prologue
    .line 27
    invoke-direct {p0, p6}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    .line 28
    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->sp:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->msg:Ljava/lang/String;

    .line 30
    iput-boolean p3, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->isData:Z

    .line 31
    iput-boolean p5, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->mustSend:Z

    .line 32
    iput-short p4, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->dataPort:S

    .line 33
    return-void
.end method


# virtual methods
.method public getDataMsg()[B
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDataPort()S
    .locals 1

    .prologue
    .line 72
    iget-short v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->dataPort:S

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public isData()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->isData:Z

    return v0
.end method

.method public isMustSend()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->mustSend:Z

    return v0
.end method

.method public requestSendMessage(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;
    .param p2, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->isData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getDataMsg()[B

    move-result-object v4

    .line 100
    .local v4, "data":[B
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getSp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getDataPort()S

    move-result v3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 104
    .end local v4    # "data":[B
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getSp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->getMsg()Ljava/lang/String;

    move-result-object v8

    move-object v7, v2

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendMessageFailed()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->failedCommand:Lcom/zp/mm/api/Command;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->failedCommand:Lcom/zp/mm/api/Command;

    invoke-interface {v0}, Lcom/zp/mm/api/Command;->executeCommand()V

    .line 93
    :cond_0
    return-void
.end method

.method public sendMessageSuccess()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->successCommand:Lcom/zp/mm/api/Command;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->successCommand:Lcom/zp/mm/api/Command;

    invoke-interface {v0}, Lcom/zp/mm/api/Command;->executeCommand()V

    .line 83
    :cond_0
    return-void
.end method

.method final setFailedCommand(Lcom/zp/mm/api/Command;)V
    .locals 0
    .param p1, "failedCommand"    # Lcom/zp/mm/api/Command;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->failedCommand:Lcom/zp/mm/api/Command;

    .line 120
    return-void
.end method

.method final setSuccessCommand(Lcom/zp/mm/api/Command;)V
    .locals 0
    .param p1, "successCommand"    # Lcom/zp/mm/api/Command;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultSMSCommand;->successCommand:Lcom/zp/mm/api/Command;

    .line 116
    return-void
.end method
