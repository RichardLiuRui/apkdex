.class Lcom/mj/jar/pay/MjPaySDK$1;
.super Landroid/os/Handler;
.source "MjPaySDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mj/jar/pay/MjPaySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mj/jar/pay/MjPaySDK;


# direct methods
.method constructor <init>(Lcom/mj/jar/pay/MjPaySDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mj/jar/pay/MjPaySDK$1;->this$0:Lcom/mj/jar/pay/MjPaySDK;

    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    .line 44
    iget-object v1, p0, Lcom/mj/jar/pay/MjPaySDK$1;->this$0:Lcom/mj/jar/pay/MjPaySDK;

    # getter for: Lcom/mj/jar/pay/MjPaySDK;->gBillingListener:Lcom/mj/jar/pay/BillingListener;
    invoke-static {v1}, Lcom/mj/jar/pay/MjPaySDK;->access$0(Lcom/mj/jar/pay/MjPaySDK;)Lcom/mj/jar/pay/BillingListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mj/jar/pay/BillingListener;->onInitResult(I)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_3

    .line 46
    iget-object v1, p0, Lcom/mj/jar/pay/MjPaySDK$1;->this$0:Lcom/mj/jar/pay/MjPaySDK;

    # getter for: Lcom/mj/jar/pay/MjPaySDK;->payObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mj/jar/pay/MjPaySDK;->access$1(Lcom/mj/jar/pay/MjPaySDK;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mj/jar/pay/MjPaySDK$1;->this$0:Lcom/mj/jar/pay/MjPaySDK;

    # getter for: Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;
    invoke-static {v1}, Lcom/mj/jar/pay/MjPaySDK;->access$2(Lcom/mj/jar/pay/MjPaySDK;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/mj/jar/pay/MjPaySDK$1;->this$0:Lcom/mj/jar/pay/MjPaySDK;

    # getter for: Lcom/mj/jar/pay/MjPaySDK;->gContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/mj/jar/pay/MjPaySDK;->access$3(Lcom/mj/jar/pay/MjPaySDK;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mj/jar/pay/DexClass;->install(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/DexClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mj/jar/pay/DexClass;->setDexClassChange()V

    .line 48
    iget-object v1, p0, Lcom/mj/jar/pay/MjPaySDK$1;->this$0:Lcom/mj/jar/pay/MjPaySDK;

    # invokes: Lcom/mj/jar/pay/MjPaySDK;->MjBilling()V
    invoke-static {v1}, Lcom/mj/jar/pay/MjPaySDK;->access$4(Lcom/mj/jar/pay/MjPaySDK;)V

    goto :goto_0

    .line 50
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_4

    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "temp":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/mj/jar/pay/MjPaySDK$1;->this$0:Lcom/mj/jar/pay/MjPaySDK;

    # getter for: Lcom/mj/jar/pay/MjPaySDK;->gBillingListener:Lcom/mj/jar/pay/BillingListener;
    invoke-static {v1}, Lcom/mj/jar/pay/MjPaySDK;->access$0(Lcom/mj/jar/pay/MjPaySDK;)Lcom/mj/jar/pay/BillingListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mj/jar/pay/BillingListener;->onBillingResult(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
