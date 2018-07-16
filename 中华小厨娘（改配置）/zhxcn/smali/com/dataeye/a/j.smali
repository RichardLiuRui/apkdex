.class public final Lcom/dataeye/a/j;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    iput v0, p0, Lcom/dataeye/a/j;->a:I

    iput v0, p0, Lcom/dataeye/a/j;->b:I

    iput v0, p0, Lcom/dataeye/a/j;->c:I

    iput-boolean v0, p0, Lcom/dataeye/a/j;->d:Z

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    iput v0, p0, Lcom/dataeye/a/j;->a:I

    iput v0, p0, Lcom/dataeye/a/j;->b:I

    iput v0, p0, Lcom/dataeye/a/j;->c:I

    iput-boolean v0, p0, Lcom/dataeye/a/j;->d:Z

    iput p1, p0, Lcom/dataeye/a/j;->a:I

    iput p2, p0, Lcom/dataeye/a/j;->b:I

    iput-boolean p4, p0, Lcom/dataeye/a/j;->d:Z

    iput p3, p0, Lcom/dataeye/a/j;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/dataeye/a/j;->a:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/j;->a:I

    iget v0, p0, Lcom/dataeye/a/j;->b:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/j;->b:I

    iget v0, p0, Lcom/dataeye/a/j;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/j;->c:I

    iget-boolean v0, p0, Lcom/dataeye/a/j;->d:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dataeye/a/j;->d:Z

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 2

    iget v0, p0, Lcom/dataeye/a/j;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/j;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/j;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-boolean v0, p0, Lcom/dataeye/a/j;->d:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(ZI)V

    return-void
.end method
