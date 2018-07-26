.class Lcom/zxhykj/xinzf/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zxhykj/xinzf/XinZF;


# direct methods
.method constructor <init>(Lcom/zxhykj/xinzf/XinZF;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/b;->a:Lcom/zxhykj/xinzf/XinZF;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zxhykj/xinzf/b;->a:Lcom/zxhykj/xinzf/XinZF;

    invoke-static {v0}, Lcom/zxhykj/xinzf/XinZF;->a(Lcom/zxhykj/xinzf/XinZF;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zxhykj/xinzf/XinZF;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zxhykj/xinzf/g/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zxhykj/xinzf/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zxhykj/xinzf/g/f;->b()V

    iget-object v0, p0, Lcom/zxhykj/xinzf/b;->a:Lcom/zxhykj/xinzf/XinZF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zxhykj/xinzf/XinZF;->a(Lcom/zxhykj/xinzf/XinZF;Z)V

    iget-object v0, p0, Lcom/zxhykj/xinzf/b;->a:Lcom/zxhykj/xinzf/XinZF;

    invoke-static {v0}, Lcom/zxhykj/xinzf/XinZF;->b(Lcom/zxhykj/xinzf/XinZF;)V

    :cond_0
    return-void
.end method
