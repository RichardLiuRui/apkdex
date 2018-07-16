.class public final Lcom/xs/hszp/mm318/a/a/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xs/hszp/mm318/a/a/f;->b:Z

    return-void
.end method

.method public static a(II)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sput-object p0, Lcom/xs/hszp/mm318/a/a/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/e;->a()Lcom/xs/hszp/mm318/a/a/e;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/xs/hszp/mm318/a/a/e;->r:I

    iput-object p1, v0, Lcom/xs/hszp/mm318/a/a/e;->i:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/xs/hszp/mm318/a/a/c;->s:I

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/c;->b()V

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/c;->a()V

    invoke-static {p0}, Lcom/xs/hszp/mm318/a/a/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/c;->b()V

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/c;->a()V

    invoke-static {p0}, Lcom/xs/hszp/mm318/a/a/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/e;->a()Lcom/xs/hszp/mm318/a/a/e;

    move-result-object v1

    iput-object p1, v1, Lcom/xs/hszp/mm318/a/a/e;->a:Ljava/lang/String;

    iput-object p2, v1, Lcom/xs/hszp/mm318/a/a/e;->b:Ljava/lang/String;

    iput p3, v1, Lcom/xs/hszp/mm318/a/a/e;->c:I

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xs/hszp/mm318/a/a/e;->d:Ljava/lang/String;

    iput-object p5, v1, Lcom/xs/hszp/mm318/a/a/e;->e:Ljava/lang/String;

    iput-object p6, v1, Lcom/xs/hszp/mm318/a/a/e;->f:Ljava/lang/String;

    iput-object p7, v1, Lcom/xs/hszp/mm318/a/a/e;->g:Ljava/lang/String;

    iput-object p8, v1, Lcom/xs/hszp/mm318/a/a/e;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/xs/hszp/mm318/a/a/e;->i:Ljava/lang/String;

    iput-object p9, v1, Lcom/xs/hszp/mm318/a/a/e;->k:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Lcom/xs/hszp/mm318/a/a/e;->r:I

    const-string v2, ""

    iput-object v2, v1, Lcom/xs/hszp/mm318/a/a/e;->l:Ljava/lang/String;

    iput-object p10, v1, Lcom/xs/hszp/mm318/a/a/e;->m:Ljava/lang/String;

    iput-object p11, v1, Lcom/xs/hszp/mm318/a/a/e;->n:Ljava/lang/String;

    iput-object p12, v1, Lcom/xs/hszp/mm318/a/a/e;->o:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/xs/hszp/mm318/a/a/e;->p:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/xs/hszp/mm318/a/a/e;->q:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v1, Lcom/xs/hszp/mm318/a/a/e;->r:I

    sput-object p0, Lcom/xs/hszp/mm318/a/a/f;->a:Landroid/content/Context;

    const/4 v2, 0x1

    sput v2, Lcom/xs/hszp/mm318/a/a/c;->s:I

    new-instance v2, Lcom/xs/hszp/mm318/a/a/g;

    move/from16 v0, p15

    invoke-direct {v2, v0, p0, v1}, Lcom/xs/hszp/mm318/a/a/g;-><init>(ILandroid/content/Context;Lcom/xs/hszp/mm318/a/a/e;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/xs/hszp/mm318/a/a/f;->b:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/xs/hszp/mm318/a/a/f;->b:Z

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/xs/hszp/mm318/a/a/e;->a()Lcom/xs/hszp/mm318/a/a/e;

    move-result-object v0

    iput-object p1, v0, Lcom/xs/hszp/mm318/a/a/e;->j:Ljava/lang/String;

    invoke-static {}, Lcom/xs/hszp/mm318/a/a/c;->a()V

    const/4 v0, 0x3

    sput v0, Lcom/xs/hszp/mm318/a/a/c;->s:I

    invoke-static {p0}, Lcom/xs/hszp/mm318/a/a/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x5

    sput v0, Lcom/xs/hszp/mm318/a/a/c;->s:I

    invoke-static {p0}, Lcom/xs/hszp/mm318/a/a/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
