.class final Lcom/p/s/j/z/c/i;
.super Landroid/os/AsyncTask;
.source "N.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/p/s/j/z/c/N;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
