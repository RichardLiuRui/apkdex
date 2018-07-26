.class Lcom/y/t/jar/pay/YFPaySDK$1;
.super Landroid/os/Handler;
.source "YFPaySDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/y/t/jar/pay/YFPaySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/y/t/jar/pay/YFPaySDK;


# direct methods
.method constructor <init>(Lcom/y/t/jar/pay/YFPaySDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/y/t/jar/pay/YFPaySDK$1;->this$0:Lcom/y/t/jar/pay/YFPaySDK;

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_2

    .line 52
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_3

    .line 53
    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK$1;->this$0:Lcom/y/t/jar/pay/YFPaySDK;

    # getter for: Lcom/y/t/jar/pay/YFPaySDK;->payObj:Ljava/lang/Object;
    invoke-static {v2}, Lcom/y/t/jar/pay/YFPaySDK;->access$0(Lcom/y/t/jar/pay/YFPaySDK;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK$1;->this$0:Lcom/y/t/jar/pay/YFPaySDK;

    # getter for: Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;
    invoke-static {v2}, Lcom/y/t/jar/pay/YFPaySDK;->access$1(Lcom/y/t/jar/pay/YFPaySDK;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_2

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK$1;->this$0:Lcom/y/t/jar/pay/YFPaySDK;

    # getter for: Lcom/y/t/jar/pay/YFPaySDK;->gContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/y/t/jar/pay/YFPaySDK;->access$2(Lcom/y/t/jar/pay/YFPaySDK;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/y/t/jar/pay/YFPaySDK;->filePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/y/t/jar/pay/DexClass;->install(Landroid/content/Context;Ljava/lang/String;)Lcom/y/t/jar/pay/DexClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/y/t/jar/pay/DexClass;->setDexClassChange()V

    .line 55
    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK$1;->this$0:Lcom/y/t/jar/pay/YFPaySDK;

    # invokes: Lcom/y/t/jar/pay/YFPaySDK;->MjBilling()V
    invoke-static {v2}, Lcom/y/t/jar/pay/YFPaySDK;->access$3(Lcom/y/t/jar/pay/YFPaySDK;)V

    .line 119
    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_4

    .line 58
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v1    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK$1;->this$0:Lcom/y/t/jar/pay/YFPaySDK;

    # getter for: Lcom/y/t/jar/pay/YFPaySDK;->gBillingListener:Lcom/y/t/jar/pay/BillingListener;
    invoke-static {v2}, Lcom/y/t/jar/pay/YFPaySDK;->access$4(Lcom/y/t/jar/pay/YFPaySDK;)Lcom/y/t/jar/pay/BillingListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/y/t/jar/pay/BillingListener;->onBillingResult(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
