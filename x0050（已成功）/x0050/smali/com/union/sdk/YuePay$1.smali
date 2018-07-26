.class Lcom/union/sdk/YuePay$1;
.super Ljava/lang/Object;
.source "YuePay.java"

# interfaces
.implements Lbn/sdk/szwcsss/common/y/yyl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/YuePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/YuePay;


# direct methods
.method constructor <init>(Lcom/union/sdk/YuePay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/YuePay$1;->this$0:Lcom/union/sdk/YuePay;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x14

    .line 37
    if-nez p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/union/sdk/YuePay$1;->this$0:Lcom/union/sdk/YuePay;

    # getter for: Lcom/union/sdk/YuePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/YuePay;->access$0(Lcom/union/sdk/YuePay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "YuePay"

    const/4 v2, 0x1

    const-string v3, "success"

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/union/sdk/YuePay$1;->this$0:Lcom/union/sdk/YuePay;

    # getter for: Lcom/union/sdk/YuePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/YuePay;->access$0(Lcom/union/sdk/YuePay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "YuePay"

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method
