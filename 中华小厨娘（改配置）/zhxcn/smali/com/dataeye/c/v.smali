.class public Lcom/dataeye/c/v;
.super Ljava/lang/Thread;


# static fields
.field private static a:[I


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dataeye/c/v;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0x1388
        0x2af8
        0x7918
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dataeye/c/v;->b:Z

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/dataeye/c/v;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-boolean v2, p0, Lcom/dataeye/c/v;->b:Z

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/dataeye/c/v;->a:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    sget-object v2, Lcom/dataeye/c/v;->a:[I

    aget v2, v2, v0

    sget-object v3, Lcom/dataeye/c/v;->a:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    :cond_2
    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v2, p0, Lcom/dataeye/c/v;->b:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/dataeye/c/b;->d:Z

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/dataeye/c/b;->a(Z)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/dataeye/c/b;->m()V

    goto :goto_2
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/dataeye/c/v;->start()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dataeye/c/v;->b:Z

    return-void
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dataeye/c/v;->b:Z

    invoke-virtual {p0}, Lcom/dataeye/c/v;->a()Ljava/lang/Object;

    return-void
.end method
