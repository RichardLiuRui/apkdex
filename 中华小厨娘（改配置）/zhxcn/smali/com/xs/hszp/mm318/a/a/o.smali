.class public final Lcom/xs/hszp/mm318/a/a/o;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UploadThread"

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iput p2, p0, Lcom/xs/hszp/mm318/a/a/o;->f:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UploadThread"

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iput p2, p0, Lcom/xs/hszp/mm318/a/a/o;->f:I

    iput-object p3, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/xs/hszp/mm318/a/a/o;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UploadThread"

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    const/16 v0, 0xc

    iput v0, p0, Lcom/xs/hszp/mm318/a/a/o;->f:I

    iput-object p2, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/xs/hszp/mm318/a/a/o;->f:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/a/a/o;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/h;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobileAgent"

    const-string v2, "Exception occurred when recording usage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/a/a/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xs/hszp/mm318/a/a/h;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/a/a/o;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/h;->e(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/h;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xs/hszp/mm318/a/a/h;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/xs/hszp/mm318/a/a/e;->a()Lcom/xs/hszp/mm318/a/a/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xs/hszp/mm318/a/a/e;->g:Ljava/lang/String;

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/e;->a()Lcom/xs/hszp/mm318/a/a/e;

    move-result-object v1

    iget-object v1, v1, Lcom/xs/hszp/mm318/a/a/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "UploadThread"

    const-string v1, "unexpected empty channelId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/h;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "UploadThread"

    const-string v1, "unexpected empty appkey"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/h;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/xs/hszp/mm318/a/a/o;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xs/hszp/mm318/a/a/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/a/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/a/a/o;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/xs/hszp/mm318/a/a/o;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xs/hszp/mm318/a/a/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
