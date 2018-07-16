.class public final Lcom/android/mtools/f;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private n:Ljava/lang/String;

.field private p:I

.field private x:J

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/mtools/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/f;->p:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/f;->y:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/f;->C:I

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/f;->B:I

    return-void
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mtools/f;->x:J

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/f;->n:Ljava/lang/String;

    return-void
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mtools/f;->x:J

    return-wide v0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/f;->z:Ljava/lang/String;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/f;->A:Ljava/lang/String;

    return-void
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/f;->p:I

    return v0
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/f;->y:I

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/f;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/f;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/f;->C:I

    return v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/f;->B:I

    return v0
.end method
