.class public Lcom/qpsoft/tasks/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# static fields
.field static entry:Lcom/qpsoft/tasks/Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/qpsoft/tasks/Entry;->entry:Lcom/qpsoft/tasks/Entry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/qpsoft/tasks/Entry;->entry:Lcom/qpsoft/tasks/Entry;

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/qpsoft/tasks/Entry;

    invoke-direct {v0}, Lcom/qpsoft/tasks/Entry;-><init>()V

    sput-object v0, Lcom/qpsoft/tasks/Entry;->entry:Lcom/qpsoft/tasks/Entry;

    .line 26
    sget-object v0, Lcom/qpsoft/tasks/Entry;->entry:Lcom/qpsoft/tasks/Entry;

    invoke-direct {v0, p0}, Lcom/qpsoft/tasks/Entry;->run(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private run(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/qpsoft/tasks/ObjectPrep;->loadCode(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
