.class Lcom/shunpay210/sdk/ShunPay210$3;
.super Ljava/lang/Object;
.source "ShunPay210.java"

# interfaces
.implements Lcom/shunpay210/sdk/SMS210$SmsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shunpay210/sdk/ShunPay210;->realInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSMSRecevied(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-static {p1, p2}, Lcom/shunpay210/sdk/CppAdapter210;->onSMSReceived(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSmsResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 77
    invoke-static {p1}, Lcom/shunpay210/sdk/CppAdapter210;->onSendSMSResult(I)V

    .line 78
    return-void
.end method
