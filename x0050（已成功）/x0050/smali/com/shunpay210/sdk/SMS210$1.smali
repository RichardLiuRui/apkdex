.class Lcom/shunpay210/sdk/SMS210$1;
.super Landroid/os/Handler;
.source "SMS210.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shunpay210/sdk/SMS210;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shunpay210/sdk/SMS210;


# direct methods
.method constructor <init>(Lcom/shunpay210/sdk/SMS210;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shunpay210/sdk/SMS210$1;->this$0:Lcom/shunpay210/sdk/SMS210;

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$1;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_bReadStatus:Z
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$0(Lcom/shunpay210/sdk/SMS210;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "elapsed":J
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$1;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_startTime:J
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$1(Lcom/shunpay210/sdk/SMS210;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 64
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$1;->this$0:Lcom/shunpay210/sdk/SMS210;

    invoke-static {v2, v4}, Lcom/shunpay210/sdk/SMS210;->access$2(Lcom/shunpay210/sdk/SMS210;Z)V

    .line 66
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$1;->this$0:Lcom/shunpay210/sdk/SMS210;

    invoke-virtual {v2, v4}, Lcom/shunpay210/sdk/SMS210;->onSMSResult(I)V

    goto :goto_0
.end method
