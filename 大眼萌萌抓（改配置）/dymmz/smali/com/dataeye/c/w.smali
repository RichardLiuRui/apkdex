.class public Lcom/dataeye/c/w;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/dataeye/a/i;

    invoke-direct {v0}, Lcom/dataeye/a/i;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/i;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/dataeye/a/i;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput v2, v0, Lcom/dataeye/a/i;->e:I

    iput v3, v0, Lcom/dataeye/a/i;->d:I

    :goto_0
    invoke-static {p7}, Lcom/dataeye/c/ac;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/i;->f:Ljava/lang/String;

    iput-wide p3, v0, Lcom/dataeye/a/i;->c:J

    iput-wide p5, v0, Lcom/dataeye/a/i;->g:J

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/i;)V

    return-void

    :cond_0
    iput v3, v0, Lcom/dataeye/a/i;->e:I

    iput v2, v0, Lcom/dataeye/a/i;->d:I

    goto :goto_0
.end method
