.class Lcom/union/sdk/UnionPay$3;
.super Ljava/lang/Object;
.source "UnionPay.java"

# interfaces
.implements Lcom/union/sdk/UnionPay$PayCallBackListener;


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
    iput-object p1, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "payMent"    # I
    .param p3, "result"    # I
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 171
    invoke-static {p1, p2, p3, p4}, Lcom/union/sdk/ShunFuPay;->onThirdPayResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_callBackOnce:Z
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$0(Lcom/union/sdk/UnionPay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_listener:Lcom/union/sdk/UnionPay$PayListener;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$11(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/UnionPay$PayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p3, v2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    invoke-static {v0, v2}, Lcom/union/sdk/UnionPay;->access$12(Lcom/union/sdk/UnionPay;Z)V

    .line 175
    iget-object v0, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v0, v0, Lcom/union/sdk/UnionPay;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    iget-object v1, v1, Lcom/union/sdk/UnionPay;->m_runnAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget-object v0, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    # getter for: Lcom/union/sdk/UnionPay;->m_listener:Lcom/union/sdk/UnionPay$PayListener;
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$11(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/UnionPay$PayListener;

    move-result-object v0

    invoke-interface {v0, p2, v2, p4}, Lcom/union/sdk/UnionPay$PayListener;->payResult(IILjava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/union/sdk/UnionPay$3;->this$0:Lcom/union/sdk/UnionPay;

    # invokes: Lcom/union/sdk/UnionPay;->hideProcessDialog()V
    invoke-static {v0}, Lcom/union/sdk/UnionPay;->access$13(Lcom/union/sdk/UnionPay;)V

    .line 179
    :cond_0
    return-void
.end method
