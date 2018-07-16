.class Lorg/cocos2dx/pay/QiPaPayHelper$1;
.super Ljava/lang/Object;
.source "QiPaPayHelper.java"

# interfaces
.implements Lcom/daily2fun/pay/union/ResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/QiPaPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/pay/QiPaPayHelper;


# direct methods
.method constructor <init>(Lorg/cocos2dx/pay/QiPaPayHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/pay/QiPaPayHelper$1;->this$0:Lorg/cocos2dx/pay/QiPaPayHelper;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/cocos2dx/pay/QiPaPayHelper;->runNativeCallback(I)V

    .line 221
    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$2()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/QiPaPayHelper$1;->this$0:Lorg/cocos2dx/pay/QiPaPayHelper;

    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I
    invoke-static {v1}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$1(Lorg/cocos2dx/pay/QiPaPayHelper;)I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "fail"

    invoke-static {v0, v1}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public onPaySuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "okCode"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/cocos2dx/pay/QiPaPayHelper;->runNativeCallback(I)V

    .line 213
    invoke-static {}, Lcom/dataeye/DCAgent;->getUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extData"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper$1;->this$0:Lorg/cocos2dx/pay/QiPaPayHelper;

    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->dataEyeArray:[D
    invoke-static {v2}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$0(Lorg/cocos2dx/pay/QiPaPayHelper;)[D

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper$1;->this$0:Lorg/cocos2dx/pay/QiPaPayHelper;

    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$1(Lorg/cocos2dx/pay/QiPaPayHelper;)I

    move-result v3

    aget-wide v2, v2, v3

    const-string v4, "CNY"

    const-string v5, "SMS"

    invoke-static/range {v0 .. v5}, Lcom/dataeye/DCVirtualCurrency;->paymentSuccess(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    .line 214
    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$2()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/QiPaPayHelper$1;->this$0:Lorg/cocos2dx/pay/QiPaPayHelper;

    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I
    invoke-static {v1}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$1(Lorg/cocos2dx/pay/QiPaPayHelper;)I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
