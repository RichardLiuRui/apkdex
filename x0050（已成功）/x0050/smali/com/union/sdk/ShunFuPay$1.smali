.class Lcom/union/sdk/ShunFuPay$1;
.super Ljava/lang/Object;
.source "ShunFuPay.java"

# interfaces
.implements Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;


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
    iput-object p1, p0, Lcom/union/sdk/ShunFuPay$1;->this$0:Lcom/union/sdk/ShunFuPay;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreparePay(Z)V
    .locals 2
    .param p1, "isPop"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lcom/union/sdk/ShunFuPay$1;->this$0:Lcom/union/sdk/ShunFuPay;

    iget-object v0, v0, Lcom/union/sdk/ShunFuPay;->m_payListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

    invoke-static {v0}, Lcom/shunpay210/sdk/ShunPay210;->pay(Lcom/shunpay210/sdk/ShunPay210$PayListener;)V

    .line 42
    if-nez p1, :cond_0

    # getter for: Lcom/union/sdk/ShunFuPay;->m_payType:I
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    # getter for: Lcom/union/sdk/ShunFuPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$1()Lcom/union/sdk/UnionPay$ChargeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    # getter for: Lcom/union/sdk/ShunFuPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$1()Lcom/union/sdk/UnionPay$ChargeListener;

    move-result-object v0

    # getter for: Lcom/union/sdk/ShunFuPay;->m_itemId:I
    invoke-static {}, Lcom/union/sdk/ShunFuPay;->access$2()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/union/sdk/UnionPay$ChargeListener;->thirdCharge(I)V

    .line 45
    :cond_0
    return-void
.end method
