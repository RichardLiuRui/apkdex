.class public final Lcom/dataeye/a/g;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static d:[B


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dataeye/a/g;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/g;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dataeye/a/g;->c:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/dataeye/a/g;->a:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/g;->a:I

    invoke-virtual {p1, v2, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/g;->b:Ljava/lang/String;

    sget-object v0, Lcom/dataeye/a/g;->d:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    sput-object v0, Lcom/dataeye/a/g;->d:[B

    sget-object v0, Lcom/dataeye/a/g;->d:[B

    aput-byte v1, v0, v1

    :cond_0
    sget-object v0, Lcom/dataeye/a/g;->d:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/g;->c:[B

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 2

    iget v0, p0, Lcom/dataeye/a/g;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-object v0, p0, Lcom/dataeye/a/g;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/dataeye/a/g;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a([BI)V

    return-void
.end method
