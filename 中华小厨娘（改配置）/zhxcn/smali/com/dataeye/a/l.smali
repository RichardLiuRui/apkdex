.class public final Lcom/dataeye/a/l;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/l;->a:Ljava/lang/String;

    iput v1, p0, Lcom/dataeye/a/l;->b:I

    iput v1, p0, Lcom/dataeye/a/l;->c:I

    iput v1, p0, Lcom/dataeye/a/l;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/l;->a:Ljava/lang/String;

    iget v0, p0, Lcom/dataeye/a/l;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/l;->b:I

    iget v0, p0, Lcom/dataeye/a/l;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/l;->c:I

    iget v0, p0, Lcom/dataeye/a/l;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/l;->d:I

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 2

    iget-object v0, p0, Lcom/dataeye/a/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/a/l;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/dataeye/a/l;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/l;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/l;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    return-void
.end method
