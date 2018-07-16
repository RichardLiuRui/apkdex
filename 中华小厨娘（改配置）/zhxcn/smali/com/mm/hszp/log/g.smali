.class final Lcom/mm/hszp/log/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/mm/hszp/log/f;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mm/hszp/log/c;->a()V

    invoke-static {}, Lcom/mm/hszp/log/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mm/hszp/log/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
