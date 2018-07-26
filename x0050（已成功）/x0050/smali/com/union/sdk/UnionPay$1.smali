.class Lcom/union/sdk/UnionPay$1;
.super Ljava/lang/Object;
.source "UnionPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/UnionPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/UnionPay;


# direct methods
.method constructor <init>(Lcom/union/sdk/UnionPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/UnionPay$1;->this$0:Lcom/union/sdk/UnionPay;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/union/sdk/UnionPay$1;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_callBackOnce:Z
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$0(Lcom/union/sdk/UnionPay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/union/sdk/UnionPay$1;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_sfPay:Lcom/union/sdk/ShunFuPay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$1(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/ShunFuPay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/union/sdk/UnionPay$1;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v4, v3, Lcom/union/sdk/UnionPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;

    iget-object v3, p0, Lcom/union/sdk/UnionPay$1;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v5, v3, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/union/sdk/ShunFuPay;->pay(Landroid/content/Context;IILcom/union/sdk/UnionPay$ChargeListener;Lcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 139
    iget-object v0, p0, Lcom/union/sdk/UnionPay$1;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v0, v0, Lcom/union/sdk/UnionPay;->m_handler:Landroid/os/Handler;

    const-wide/16 v1, 0x32c8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_0
    return-void
.end method
