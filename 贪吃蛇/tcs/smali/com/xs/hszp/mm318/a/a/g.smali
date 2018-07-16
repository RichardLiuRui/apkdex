.class final Lcom/xs/hszp/mm318/a/a/g;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/xs/hszp/mm318/a/a/e;


# direct methods
.method constructor <init>(ILandroid/content/Context;Lcom/xs/hszp/mm318/a/a/e;)V
    .locals 0

    iput p1, p0, Lcom/xs/hszp/mm318/a/a/g;->a:I

    iput-object p2, p0, Lcom/xs/hszp/mm318/a/a/g;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xs/hszp/mm318/a/a/g;->c:Lcom/xs/hszp/mm318/a/a/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "you have bean init..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/xs/hszp/mm318/a/a/g;->a:I

    if-lez v2, :cond_2

    iget v0, p0, Lcom/xs/hszp/mm318/a/a/g;->a:I

    move v2, v0

    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xs/hszp/mm318/a/a/f;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_1

    const/16 v3, 0xf

    if-lt v0, v3, :cond_3

    :cond_1
    :goto_3
    invoke-static {v1}, Lcom/xs/hszp/mm318/a/a/f;->a(Z)V

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "start init..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/h;->a()V

    :cond_4
    iget-object v3, p0, Lcom/xs/hszp/mm318/a/a/g;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/xs/hszp/mm318/a/a/g;->c:Lcom/xs/hszp/mm318/a/a/e;

    iget-object v4, v4, Lcom/xs/hszp/mm318/a/a/e;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/xs/hszp/mm318/a/a/g;->c:Lcom/xs/hszp/mm318/a/a/e;

    iget-object v5, v5, Lcom/xs/hszp/mm318/a/a/e;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/xs/hszp/mm318/a/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/c;->b()V

    const/16 v3, 0x50

    const/16 v4, 0x384

    invoke-static {v3, v4}, Lcom/xs/hszp/mm318/a/a/f;->a(II)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/xs/hszp/mm318/a/a/g;->sleep(J)V

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/c;->a()V

    iget-object v3, p0, Lcom/xs/hszp/mm318/a/a/g;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xs/hszp/mm318/a/a/c;->a(Landroid/content/Context;)V

    const v3, 0x9c40

    const v4, 0xfde8

    invoke-static {v3, v4}, Lcom/xs/hszp/mm318/a/a/f;->a(II)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/xs/hszp/mm318/a/a/g;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
