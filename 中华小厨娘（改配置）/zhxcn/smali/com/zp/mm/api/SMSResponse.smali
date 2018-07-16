.class public interface abstract Lcom/zp/mm/api/SMSResponse;
.super Ljava/lang/Object;
.source "SMSResponse.java"


# virtual methods
.method public abstract getDataMsg()[B
.end method

.method public abstract getDataPort()S
.end method

.method public abstract getMsg()Ljava/lang/String;
.end method

.method public abstract getSp()Ljava/lang/String;
.end method

.method public abstract isData()Z
.end method

.method public abstract isMustSend()Z
.end method

.method public abstract requestSendMessage(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendMessageFailed()V
.end method

.method public abstract sendMessageSuccess()V
.end method
