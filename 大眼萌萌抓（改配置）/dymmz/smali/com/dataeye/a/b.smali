.class public final Lcom/dataeye/a/b;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/b;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/b;->c:Ljava/lang/String;

    iput v1, p0, Lcom/dataeye/a/b;->d:I

    iput v1, p0, Lcom/dataeye/a/b;->e:I

    iput v1, p0, Lcom/dataeye/a/b;->f:I

    iput v1, p0, Lcom/dataeye/a/b;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/b;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/b;->c:Ljava/lang/String;

    iget v0, p0, Lcom/dataeye/a/b;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/b;->d:I

    iget v0, p0, Lcom/dataeye/a/b;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/b;->e:I

    iget v0, p0, Lcom/dataeye/a/b;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/b;->f:I

    iget v0, p0, Lcom/dataeye/a/b;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/b;->g:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/b;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 2

    iget-object v0, p0, Lcom/dataeye/a/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/dataeye/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/a/b;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/dataeye/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/a/b;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lcom/dataeye/a/b;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/b;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/b;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/b;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-object v0, p0, Lcom/dataeye/a/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dataeye/a/b;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
