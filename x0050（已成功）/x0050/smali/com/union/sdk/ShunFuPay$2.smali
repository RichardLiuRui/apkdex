.class Lcom/union/sdk/ShunFuPay$2;
.super Ljava/lang/Object;
.source "ShunFuPay.java"

# interfaces
.implements Lcom/shunpay210/sdk/ShunPay210$PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/ShunFuPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/ShunFuPay;


# direct methods
.method constructor <init>(Lcom/union/sdk/ShunFuPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/ShunFuPay$2;->this$0:Lcom/union/sdk/ShunFuPay;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    .line 51
    # getter for: Lcom/union/sdk/ShunFuPay;->m_payType:I
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$0()I

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/union/sdk/ShunFuPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$1()Lcom/union/sdk/UnionPay$ChargeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    # getter for: Lcom/union/sdk/ShunFuPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$1()Lcom/union/sdk/UnionPay$ChargeListener;

    move-result-object v0

    # getter for: Lcom/union/sdk/ShunFuPay;->m_itemId:I
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$2()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/union/sdk/UnionPay$ChargeListener;->thirdCharge(I)V

    .line 55
    :cond_0
    if-ne p1, v3, :cond_1

    .line 56
    # getter for: Lcom/union/sdk/ShunFuPay;->m_backListener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$3()Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "ShunFu"

    const-string v2, "success"

    invoke-interface {v0, v1, v4, v3, v2}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    # getter for: Lcom/union/sdk/ShunFuPay;->m_backListener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$3()Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v0

    const-string v1, "ShunFu"

    const/4 v2, 0x2

    const-string v3, "failed"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method
