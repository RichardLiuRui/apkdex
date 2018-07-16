.class final Lcom/android/mtools/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aS:Lcom/android/mtools/MPay;

.field private final synthetic aU:Ljava/lang/String;

.field private final synthetic aV:Ljava/lang/String;

.field private final synthetic aW:I

.field private final synthetic aX:Lcom/android/mtools/MPayListener;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/J;->aS:Lcom/android/mtools/MPay;

    iput-object p2, p0, Lcom/android/mtools/J;->aU:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mtools/J;->aV:Ljava/lang/String;

    iput p4, p0, Lcom/android/mtools/J;->aW:I

    iput-object p5, p0, Lcom/android/mtools/J;->aX:Lcom/android/mtools/MPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/mtools/J;->aS:Lcom/android/mtools/MPay;

    iget-object v1, p0, Lcom/android/mtools/J;->aU:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mtools/J;->aV:Ljava/lang/String;

    iget v3, p0, Lcom/android/mtools/J;->aW:I

    iget-object v4, p0, Lcom/android/mtools/J;->aX:Lcom/android/mtools/MPayListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mtools/MPay;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
