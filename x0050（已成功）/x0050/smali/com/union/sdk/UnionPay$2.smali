.class Lcom/union/sdk/UnionPay$2;
.super Ljava/lang/Object;
.source "UnionPay.java"

# interfaces
.implements Lcom/union/sdk/UnionPay$ChargeListener;


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
    iput-object p1, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public thirdCharge(I)V
    .locals 3
    .param p1, "itemId"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_isInit:Z
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$3(Lcom/union/sdk/UnionPay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_funPay:Lcom/union/sdk/FunPay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$4(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/FunPay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v2, v2, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/union/sdk/FunPay;->pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 149
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_snowfPay:Lcom/union/sdk/SnowFishPay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$5(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/SnowFishPay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v2, v2, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/union/sdk/SnowFishPay;->pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 150
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_xPay:Lcom/union/sdk/XinPay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$6(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/XinPay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v2, v2, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/union/sdk/XinPay;->pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 151
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_jPay:Lcom/union/sdk/JiePay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$7(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/JiePay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v2, v2, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/union/sdk/JiePay;->pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 152
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_yfPay:Lcom/union/sdk/YuFengPay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$8(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/YuFengPay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v2, v2, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/union/sdk/YuFengPay;->pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 153
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_yPay:Lcom/union/sdk/YuePay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$9(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/YuePay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v2, v2, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/union/sdk/YuePay;->pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 154
    iget-object v0, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_dmPay:Lcom/union/sdk/DaMaiPay;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$10(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/DaMaiPay;

    move-result-object v0

    # getter for: Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/union/sdk/UnionPay;->access$2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/union/sdk/UnionPay$2;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v2, v2, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/union/sdk/DaMaiPay;->pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 164
    :cond_0
    return-void
.end method
