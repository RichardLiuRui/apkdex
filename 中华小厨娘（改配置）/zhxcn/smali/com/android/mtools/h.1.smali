.class public final Lcom/android/mtools/h;
.super Ljava/lang/Object;


# instance fields
.field private id:I

.field private n:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private type:I

.field private x:J


# direct methods
.method public constructor <init>(Lcom/android/mtools/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/h;->p:I

    return-void
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mtools/h;->x:J

    return-void
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/h;->id:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/h;->type:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/h;->n:Ljava/lang/String;

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/h;->q:Ljava/lang/String;

    return-void
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mtools/h;->x:J

    return-wide v0
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/h;->id:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/mtools/h;->type:I

    return-void
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/android/mtools/h;->p:I

    return v0
.end method
