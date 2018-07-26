.class Lcom/shunpay210/sdk/ShunPay210$2;
.super Landroid/os/Handler;
.source "ShunPay210.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shunpay210/sdk/ShunPay210;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    .line 225
    .local v0, "result":I
    # getter for: Lcom/shunpay210/sdk/ShunPay210;->m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;
    invoke-static {}, Lcom/shunpay210/sdk/ShunPay210;->access$1()Lcom/shunpay210/sdk/ShunPay210$LoginListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    # getter for: Lcom/shunpay210/sdk/ShunPay210;->m_loginListener:Lcom/shunpay210/sdk/ShunPay210$LoginListener;
    invoke-static {}, Lcom/shunpay210/sdk/ShunPay210;->access$1()Lcom/shunpay210/sdk/ShunPay210$LoginListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shunpay210/sdk/ShunPay210$LoginListener;->onLoginResult(I)V

    .line 228
    :cond_0
    return-void
.end method
