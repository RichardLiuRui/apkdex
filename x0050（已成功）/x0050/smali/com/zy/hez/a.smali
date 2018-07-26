.class Lcom/zy/hez/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zy/hez/ZhYuSDK;


# direct methods
.method constructor <init>(Lcom/zy/hez/ZhYuSDK;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/a;->a:Lcom/zy/hez/ZhYuSDK;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zy/hez/a;->a:Lcom/zy/hez/ZhYuSDK;

    invoke-static {v0}, Lcom/zy/hez/ZhYuSDK;->a(Lcom/zy/hez/ZhYuSDK;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zy/hez/ZhYuSDK;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zy/hez/c/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zy/hez/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zy/hez/c/g;->b()V

    iget-object v0, p0, Lcom/zy/hez/a;->a:Lcom/zy/hez/ZhYuSDK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zy/hez/ZhYuSDK;->a(Lcom/zy/hez/ZhYuSDK;Z)V

    iget-object v0, p0, Lcom/zy/hez/a;->a:Lcom/zy/hez/ZhYuSDK;

    invoke-static {v0}, Lcom/zy/hez/ZhYuSDK;->b(Lcom/zy/hez/ZhYuSDK;)V

    :cond_0
    return-void
.end method
