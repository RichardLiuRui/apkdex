.class Lcom/union/sdk/YuFengPay$1;
.super Ljava/lang/Object;
.source "YuFengPay.java"

# interfaces
.implements Lcom/y/t/jar/pay/BillingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/YuFengPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/YuFengPay;


# direct methods
.method constructor <init>(Lcom/union/sdk/YuFengPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/YuFengPay$1;->this$0:Lcom/union/sdk/YuFengPay;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingResult(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x14

    .line 38
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/union/sdk/YuFengPay$1;->this$0:Lcom/union/sdk/YuFengPay;

    # getter for: Lcom/union/sdk/YuFengPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/YuFengPay;->access$0(Lcom/union/sdk/YuFengPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "YuFeng"

    const/4 v2, 0x1

    const-string v3, "success"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/union/sdk/YuFengPay$1;->this$0:Lcom/union/sdk/YuFengPay;

    # getter for: Lcom/union/sdk/YuFengPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/YuFengPay;->access$0(Lcom/union/sdk/YuFengPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "YuFeng"

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method
