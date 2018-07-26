.class Lcom/union/sdk/FunPay$1;
.super Ljava/lang/Object;
.source "FunPay.java"

# interfaces
.implements Lcom/inter/china/fplay/login/PayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/FunPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/FunPay;


# direct methods
.method constructor <init>(Lcom/union/sdk/FunPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/FunPay$1;->this$0:Lcom/union/sdk/FunPay;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult(I)V
    .locals 6
    .param p1, "result"    # I

    .prologue
    const/16 v5, 0x14

    .line 46
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/union/sdk/FunPay$1;->this$0:Lcom/union/sdk/FunPay;

    # getter for: Lcom/union/sdk/FunPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/FunPay;->access$0(Lcom/union/sdk/FunPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "FunPay"

    const/4 v2, 0x1

    const-string v3, "success"

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/union/sdk/FunPay$1;->this$0:Lcom/union/sdk/FunPay;

    # getter for: Lcom/union/sdk/FunPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v0}, Lcom/union/sdk/FunPay;->access$0(Lcom/union/sdk/FunPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "FunPay"

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method
