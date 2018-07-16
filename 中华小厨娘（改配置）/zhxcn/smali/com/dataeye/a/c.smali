.class public final Lcom/dataeye/a/c;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:B

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/dataeye/a/c;->d:B

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/c;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/c;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/c;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/c;->c:Ljava/lang/String;

    iget-byte v0, p0, Lcom/dataeye/a/c;->d:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/dataeye/a/c;->d:B

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/c;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/c;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/c;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 2

    iget-object v0, p0, Lcom/dataeye/a/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/dataeye/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/a/c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/dataeye/a/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/a/c;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget-byte v0, p0, Lcom/dataeye/a/c;->d:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->b(BI)V

    iget-object v0, p0, Lcom/dataeye/a/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dataeye/a/c;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/dataeye/a/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dataeye/a/c;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/dataeye/a/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dataeye/a/c;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method
