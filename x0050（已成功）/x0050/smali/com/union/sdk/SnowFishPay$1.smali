.class Lcom/union/sdk/SnowFishPay$1;
.super Landroid/os/Handler;
.source "SnowFishPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/union/sdk/SnowFishPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/union/sdk/SnowFishPay;


# direct methods
.method constructor <init>(Lcom/union/sdk/SnowFishPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/union/sdk/SnowFishPay$1;->this$0:Lcom/union/sdk/SnowFishPay;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x14

    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/union/sdk/SnowFishPay$1;->this$0:Lcom/union/sdk/SnowFishPay;

    # getter for: Lcom/union/sdk/SnowFishPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v1}, Lcom/union/sdk/SnowFishPay;->access$0(Lcom/union/sdk/SnowFishPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v1

    const-string v2, "SnowFish"

    const/4 v3, 0x1

    const-string v4, "success"

    invoke-interface {v1, v2, v6, v3, v4}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/union/sdk/SnowFishPay$1;->this$0:Lcom/union/sdk/SnowFishPay;

    # getter for: Lcom/union/sdk/SnowFishPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;
    invoke-static {v1}, Lcom/union/sdk/SnowFishPay;->access$0(Lcom/union/sdk/SnowFishPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;

    move-result-object v1

    const-string v2, "SnowFish"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v6, v3, v4}, Lcom/union/sdk/UnionPay$PayCallBackListener;->payResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
