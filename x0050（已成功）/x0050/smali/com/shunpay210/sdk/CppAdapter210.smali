.class public Lcom/shunpay210/sdk/CppAdapter210;
.super Ljava/lang/Object;
.source "CppAdapter210.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public static native needConfirm()I
.end method

.method public static onLoginResult(I)V
    .locals 0
    .param p0, "result"    # I

    .prologue
    .line 22
    invoke-static {p0}, Lcom/shunpay210/sdk/ShunPay210;->onLoginResult(I)V

    .line 23
    return-void
.end method

.method public static onPayResult(I)V
    .locals 0
    .param p0, "result"    # I

    .prologue
    .line 18
    invoke-static {p0}, Lcom/shunpay210/sdk/ShunPay210;->onPayResult(I)V

    .line 19
    return-void
.end method

.method public static native onSMSReceived(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native onSendSMSResult(I)V
.end method

.method public static native onThirdPayResult(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public static native pay(II)V
.end method

.method public static sendSms(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "port"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "smsType"    # I

    .prologue
    .line 14
    invoke-static {}, Lcom/shunpay210/sdk/SMS210;->getInstance()Lcom/shunpay210/sdk/SMS210;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shunpay210/sdk/SMS210;->sendSMS(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public static native testJavaFuncs()V
.end method
