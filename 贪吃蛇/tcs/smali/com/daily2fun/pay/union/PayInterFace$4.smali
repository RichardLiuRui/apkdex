.class Lcom/daily2fun/pay/union/PayInterFace$4;
.super Landroid/os/Handler;
.source "PayInterFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daily2fun/pay/union/PayInterFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/daily2fun/pay/union/PayInterFace;


# direct methods
.method constructor <init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    .line 315
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 318
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "priciePointId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "data1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "okCode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "data2":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 321
    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    # getter for: Lcom/daily2fun/pay/union/PayInterFace;->payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;
    invoke-static {v3}, Lcom/daily2fun/pay/union/PayInterFace;->access$4(Lcom/daily2fun/pay/union/PayInterFace;)Lcom/daily2fun/pay/union/ResultCallBack;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/daily2fun/pay/union/ResultCallBack;->onPaySuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    # getter for: Lcom/daily2fun/pay/union/PayInterFace;->payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;
    invoke-static {v3}, Lcom/daily2fun/pay/union/PayInterFace;->access$4(Lcom/daily2fun/pay/union/PayInterFace;)Lcom/daily2fun/pay/union/ResultCallBack;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/daily2fun/pay/union/ResultCallBack;->onPayFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
