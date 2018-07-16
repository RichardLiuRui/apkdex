.class public final Lcom/android/mtools/k;
.super Ljava/lang/Object;


# instance fields
.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private id:I

.field private n:Ljava/lang/String;

.field private p:I

.field private x:J


# direct methods
.method public constructor <init>(Lcom/android/mtools/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/k;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/k;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/k;->p:I

    return-void
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mtools/k;->x:J

    return-void
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/k;->id:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/k;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/k;->n:Ljava/lang/String;

    return-void
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mtools/k;->x:J

    return-wide v0
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/k;->id:I

    return-void
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/k;->p:I

    return v0
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/k;->G:Ljava/lang/String;

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/k;->H:Ljava/lang/String;

    return-void
.end method
