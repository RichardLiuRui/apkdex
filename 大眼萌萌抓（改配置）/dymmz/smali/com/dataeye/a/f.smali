.class public final Lcom/dataeye/a/f;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/f;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/dataeye/a/f;->k:Z

    iput-boolean v1, p0, Lcom/dataeye/a/f;->l:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/f;->j:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/dataeye/a/f;->k:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dataeye/a/f;->k:Z

    iget-boolean v0, p0, Lcom/dataeye/a/f;->l:Z

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dataeye/a/f;->l:Z

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 2

    iget-object v0, p0, Lcom/dataeye/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/a/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/dataeye/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/a/f;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/dataeye/a/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dataeye/a/f;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/dataeye/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dataeye/a/f;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/dataeye/a/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dataeye/a/f;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/dataeye/a/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dataeye/a/f;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/dataeye/a/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dataeye/a/f;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lcom/dataeye/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dataeye/a/f;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lcom/dataeye/a/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dataeye/a/f;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lcom/dataeye/a/f;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dataeye/a/f;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_9
    iget-boolean v0, p0, Lcom/dataeye/a/f;->k:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(ZI)V

    iget-boolean v0, p0, Lcom/dataeye/a/f;->l:Z

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(ZI)V

    return-void
.end method
