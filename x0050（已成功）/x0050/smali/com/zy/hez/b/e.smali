.class public Lcom/zy/hez/b/e;
.super Lcom/zy/hez/b/a;

# interfaces
.implements Lcom/zy/hez/b/h;


# instance fields
.field private a:I

.field private b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zy/hez/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zy/hez/b/e;->a:I

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/hez/b/e;->b:Ljava/io/InputStream;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zy/hez/b/e;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zy/hez/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "UTF-8"

    :cond_0
    iget-object v1, p0, Lcom/zy/hez/b/e;->b:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lcom/zy/hez/c/i;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zy/hez/b/e;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zy/hez/b/e;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zy/hez/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
