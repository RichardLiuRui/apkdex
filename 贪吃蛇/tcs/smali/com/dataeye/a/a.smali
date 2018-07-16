.class public final Lcom/dataeye/a/a;
.super Lcom/dataeye/b/f;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dataeye/b/f;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/a;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dataeye/a/a;->c:Z

    iput v1, p0, Lcom/dataeye/a/a;->d:I

    iput v1, p0, Lcom/dataeye/a/a;->e:I

    iput v1, p0, Lcom/dataeye/a/a;->f:I

    iput v1, p0, Lcom/dataeye/a/a;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/a;->h:Ljava/lang/String;

    iput v1, p0, Lcom/dataeye/a/a;->i:I

    iput v1, p0, Lcom/dataeye/a/a;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dataeye/a/a;->k:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dataeye/a/a;->l:J

    iput-wide v2, p0, Lcom/dataeye/a/a;->m:J

    return-void
.end method


# virtual methods
.method public a(Lcom/dataeye/b/c;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/a;->b:Ljava/lang/String;

    iget v0, p0, Lcom/dataeye/a/a;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/a;->d:I

    iget v0, p0, Lcom/dataeye/a/a;->e:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/a;->e:I

    iget v0, p0, Lcom/dataeye/a/a;->f:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/a;->f:I

    iget v0, p0, Lcom/dataeye/a/a;->g:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/a;->g:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/a;->h:Ljava/lang/String;

    iget v0, p0, Lcom/dataeye/a/a;->i:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/a;->i:I

    iget v0, p0, Lcom/dataeye/a/a;->j:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/dataeye/a/a;->j:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/a/a;->k:Ljava/lang/String;

    iget-wide v0, p0, Lcom/dataeye/a/a;->l:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/dataeye/b/c;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dataeye/a/a;->l:J

    iget-wide v0, p0, Lcom/dataeye/a/a;->m:J

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/dataeye/b/c;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dataeye/a/a;->m:J

    iget-boolean v0, p0, Lcom/dataeye/a/a;->c:Z

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/dataeye/b/c;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dataeye/a/a;->c:Z

    return-void
.end method

.method public a(Lcom/dataeye/b/e;)V
    .locals 3

    iget-object v0, p0, Lcom/dataeye/a/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/dataeye/a/a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/dataeye/a/a;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/a;->e:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/a;->f:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/a;->g:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-object v0, p0, Lcom/dataeye/a/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/a/a;->h:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/dataeye/a/a;->i:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget v0, p0, Lcom/dataeye/a/a;->j:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-object v0, p0, Lcom/dataeye/a/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/a/a;->k:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget-wide v0, p0, Lcom/dataeye/a/a;->l:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/e;->a(JI)V

    iget-wide v0, p0, Lcom/dataeye/a/a;->m:J

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/dataeye/b/e;->a(JI)V

    iget-boolean v0, p0, Lcom/dataeye/a/a;->c:Z

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/dataeye/b/e;->a(ZI)V

    return-void
.end method
