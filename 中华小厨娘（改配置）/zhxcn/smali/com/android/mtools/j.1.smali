.class public final Lcom/android/mtools/j;
.super Ljava/lang/Object;


# instance fields
.field private F:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private x:J


# direct methods
.method public constructor <init>(Lcom/android/mtools/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/j;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mtools/j;->x:J

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/j;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/j;->q:Ljava/lang/String;

    return-void
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mtools/j;->x:J

    return-wide v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/j;->F:Ljava/lang/String;

    return-void
.end method
