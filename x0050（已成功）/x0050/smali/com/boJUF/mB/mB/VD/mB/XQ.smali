.class public final Lcom/boJUF/mB/mB/VD/mB/XQ;
.super Ljava/lang/Object;


# static fields
.field private static LA:Z

.field private static On:Ljava/lang/String;

.field private static TP:Ljava/lang/String;

.field private static cp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/boJUF/mB/mB/VD/mB/XQ;->LA:Z

    sput-boolean v0, Lcom/boJUF/mB/mB/VD/mB/XQ;->cp:Z

    const-string v0, "TAG"

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/XQ;->On:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/XQ;->TP:Ljava/lang/String;

    return-void
.end method

.method public static LA(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/XQ;->TP:Ljava/lang/String;

    :cond_0
    :goto_0
    sput-boolean p1, Lcom/boJUF/mB/mB/VD/mB/XQ;->LA:Z

    sput-boolean p2, Lcom/boJUF/mB/mB/VD/mB/XQ;->cp:Z

    sput-object p3, Lcom/boJUF/mB/mB/VD/mB/XQ;->On:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boJUF/mB/mB/VD/mB/XQ;->TP:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
