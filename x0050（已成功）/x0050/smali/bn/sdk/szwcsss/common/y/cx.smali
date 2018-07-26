.class public Lbn/sdk/szwcsss/common/y/cx;
.super Ljava/lang/Object;


# static fields
.field static b:Landroid/app/AlertDialog$Builder;

.field private static for:Lbn/sdk/szwcsss/common/y/cx;

.field private static hh:I

.field private static ii:I


# instance fields
.field private a:I

.field private aa:Landroid/content/Context;

.field private cx:Landroid/content/Context;

.field private gg:I

.field private implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

.field private import:Ljava/util/concurrent/ExecutorService;

.field private instanceof:Ljava/lang/String;

.field private native:Ljava/util/concurrent/ExecutorService;

.field private private:Landroid/os/Handler;

.field private return:Ljava/util/List;

.field private sadfsaf:Ljava/util/List;

.field private safdasfs:Ljava/util/HashMap;

.field private sdfsf:I

.field private static:Ljava/util/List;

.field private synchronized:Ljava/util/Timer;

.field private throw:Z

.field private transient:Lbn/sdk/szwcsss/coddxcxc/x/while;

.field private while:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lbn/sdk/szwcsss/common/y/cx;->b:Landroid/app/AlertDialog$Builder;

    sput v1, Lbn/sdk/szwcsss/common/y/cx;->hh:I

    sput v1, Lbn/sdk/szwcsss/common/y/cx;->ii:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lbn/sdk/szwcsss/common/y/cx;->a:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->import:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->native:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->safdasfs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->return:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->static:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->sadfsaf:Ljava/util/List;

    iput v1, p0, Lbn/sdk/szwcsss/common/y/cx;->gg:I

    return-void
.end method

.method static synthetic a(Lbn/sdk/szwcsss/common/y/cx;)V
    .locals 0

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->transient()V

    return-void
.end method

.method static synthetic aa()I
    .locals 1

    sget v0, Lbn/sdk/szwcsss/common/y/cx;->hh:I

    return v0
.end method

.method static synthetic aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    return-object v0
.end method

.method public static b()Lbn/sdk/szwcsss/common/y/cx;
    .locals 1

    sget-object v0, Lbn/sdk/szwcsss/common/y/cx;->for:Lbn/sdk/szwcsss/common/y/cx;

    if-nez v0, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/common/y/cx;

    invoke-direct {v0}, Lbn/sdk/szwcsss/common/y/cx;-><init>()V

    sput-object v0, Lbn/sdk/szwcsss/common/y/cx;->for:Lbn/sdk/szwcsss/common/y/cx;

    :cond_0
    sget-object v0, Lbn/sdk/szwcsss/common/y/cx;->for:Lbn/sdk/szwcsss/common/y/cx;

    return-object v0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->return:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    const-string v5, "0"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/x/import;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)Z
    .locals 11

    const-string v0, ": %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lbn/sdk/szwcsss/common/y/cx;->throw:Z

    if-nez v0, :cond_0

    const-string v0, "pay no init"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lbn/sdk/szwcsss/common/y/cx;->instanceof:Ljava/lang/String;

    sget v0, Lbn/sdk/szwcsss/common/y/cx;->hh:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbn/sdk/szwcsss/common/y/cx;->hh:I

    sget v0, Lbn/sdk/szwcsss/common/y/cx;->ii:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbn/sdk/szwcsss/common/y/cx;->ii:I

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->aa()V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->synchronized()I

    move-result v0

    int-to-long v8, v0

    iget-object v10, p0, Lbn/sdk/szwcsss/common/y/cx;->import:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbn/sdk/szwcsss/common/y/throw;

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lbn/sdk/szwcsss/common/y/throw;-><init>(Lbn/sdk/szwcsss/common/y/cx;JLbn/sdk/szwcsss/common/y/yyl;Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/cx;J)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/common/y/cx;Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lbn/sdk/szwcsss/common/y/cx;->b(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/common/y/cx;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/common/y/cx;->for(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/common/y/cx;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->synchronized()I

    move-result v0

    int-to-long v2, v0

    iget-object v7, p0, Lbn/sdk/szwcsss/common/y/cx;->native:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbn/sdk/szwcsss/common/y/private;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lbn/sdk/szwcsss/common/y/private;-><init>(Lbn/sdk/szwcsss/common/y/cx;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic cx()I
    .locals 1

    sget v0, Lbn/sdk/szwcsss/common/y/cx;->ii:I

    return v0
.end method

.method static synthetic cx(Lbn/sdk/szwcsss/common/y/cx;)I
    .locals 2

    iget v0, p0, Lbn/sdk/szwcsss/common/y/cx;->gg:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbn/sdk/szwcsss/common/y/cx;->gg:I

    return v0
.end method

.method private cx(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->synchronized()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic for(Lbn/sdk/szwcsss/common/y/cx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    return-object v0
.end method

.method private for(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)V
    .locals 9

    const-string v0, "showTwoTipDlg start 2 01"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v1, "ZYXD"

    invoke-virtual {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u68c0\u67e5asset\u76ee\u5f55\u4e0b\u7684yylist.xml\u662f\u5426\u6709\u6548"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "showTwoTipDlg start 2 02"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/b;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "\u8bf7\u68c0\u67e5\u8ba1\u8d39\u70b9\u7d22\u5f15\u662f\u5426\u6709\u6548"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "showTwoTipDlg start 2 03"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/v/b;->cx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sput-object v1, Lbn/sdk/szwcsss/common/y/cx;->b:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lbn/sdk/szwcsss/common/y/cx;->b:Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u6b21\u8d39\u7528\u5c06\u4f1a\u4ece\u60a8\u7684\u8bdd\u8d39\u4e2d\u6263\u9664\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4fe1\u606f\u8d39(\u4e0d\u542b\u901a\u4fe1\u8d39)\u7531\u8fd0\u8425\u5546\u4ee3\u6536\uff0c\u5145\u503c\u6210\u529f\u540e\u8fd0\u8425\u5546\u4f1a\u53d1\u77ed\u4fe1\u5230\u60a8\u7684\u6536\u4ef6\u7bb1\u3002\u5ba2\u670d\u70ed\u7ebf\uff1a0755-83223285!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v7, Lbn/sdk/szwcsss/common/y/cx;->b:Landroid/app/AlertDialog$Builder;

    const-string v8, "\u786e\u8ba4"

    new-instance v0, Lbn/sdk/szwcsss/common/y/transient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lbn/sdk/szwcsss/common/y/transient;-><init>(Lbn/sdk/szwcsss/common/y/cx;Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lbn/sdk/szwcsss/common/y/cx;->b:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lbn/sdk/szwcsss/common/y/implements;

    invoke-direct {v2, p0, p3}, Lbn/sdk/szwcsss/common/y/implements;-><init>(Lbn/sdk/szwcsss/common/y/cx;Lbn/sdk/szwcsss/common/y/yyl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "showTwoTipDlg start 2 04"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lbn/sdk/szwcsss/common/y/instanceof;

    invoke-direct {v0, p0}, Lbn/sdk/szwcsss/common/y/instanceof;-><init>(Lbn/sdk/szwcsss/common/y/cx;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private for(Ljava/lang/String;)Z
    .locals 6

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    new-instance v3, Lbn/sdk/szwcsss/common/y/while;

    invoke-direct {v3, p0}, Lbn/sdk/szwcsss/common/y/while;-><init>(Lbn/sdk/szwcsss/common/y/cx;)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->b(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method private implements()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->transient:Lbn/sdk/szwcsss/coddxcxc/x/while;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/while;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->transient:Lbn/sdk/szwcsss/coddxcxc/x/while;

    invoke-virtual {v2}, Lbn/sdk/szwcsss/coddxcxc/x/while;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic implements(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->sadfsaf:Ljava/util/List;

    return-object v0
.end method

.method static synthetic instanceof(Lbn/sdk/szwcsss/common/y/cx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    return-object v0
.end method

.method private instanceof()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const-string v0, ""

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->synchronized()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/x/private;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v1, "___getLocalEnablePayStr =%s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic private(Lbn/sdk/szwcsss/common/y/cx;)I
    .locals 2

    iget v0, p0, Lbn/sdk/szwcsss/common/y/cx;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbn/sdk/szwcsss/common/y/cx;->a:I

    return v0
.end method

.method private private()V
    .locals 6

    const-string v0, "startPaySwitchTimer"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->transient()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->synchronized:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lbn/sdk/szwcsss/common/y/cx;->sdfsf:I

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->synchronized:Ljava/util/Timer;

    new-instance v1, Lbn/sdk/szwcsss/common/y/synchronized;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbn/sdk/szwcsss/common/y/synchronized;-><init>(Lbn/sdk/szwcsss/common/y/cx;Lbn/sdk/szwcsss/common/y/aa;)V

    const-wide/16 v2, 0x64

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v4}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->instanceof()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic sdfsf(Lbn/sdk/szwcsss/common/y/cx;)I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/common/y/cx;->sdfsf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbn/sdk/szwcsss/common/y/cx;->sdfsf:I

    return v0
.end method

.method private synchronized()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/l/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/g/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "JD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/k/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MGDM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/n/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "EG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/r/b;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "YJ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/i/b;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "LT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/u/b;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ZZF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/j/b;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "MF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/q/b;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "YHXF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/t/throw;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "ZYXD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/m/b;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "MZYW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/s/b;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "YMZF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/c/b;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "EPAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/d/b;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "HEJU"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/f/b;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "HZTK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/o/b;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "WYZF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/h/b;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "JXZZ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/e/b;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "HZPZ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "DMZF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/p/b;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "YFZF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object v0
.end method

.method static synthetic synchronized(Lbn/sdk/szwcsss/common/y/cx;)V
    .locals 0

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->private()V

    return-void
.end method

.method static synthetic throw()I
    .locals 2

    sget v0, Lbn/sdk/szwcsss/common/y/cx;->ii:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lbn/sdk/szwcsss/common/y/cx;->ii:I

    return v0
.end method

.method static synthetic throw(Lbn/sdk/szwcsss/common/y/cx;)I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/common/y/cx;->a:I

    return v0
.end method

.method static synthetic transient(Lbn/sdk/szwcsss/common/y/cx;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->instanceof:Ljava/lang/String;

    return-object v0
.end method

.method private transient()V
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->synchronized:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->synchronized:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->synchronized:Ljava/util/Timer;

    const-string v0, "stopPaySwitchTimer"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic while(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->static:Ljava/util/List;

    return-object v0
.end method

.method private while()V
    .locals 4

    iget-boolean v0, p0, Lbn/sdk/szwcsss/common/y/cx;->while:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "payInit"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "MM"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/l/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/g/b;->b(Landroid/content/Context;Landroid/os/Handler;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/n/b;->b(Landroid/content/Context;Landroid/os/Handler;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/k/b;->b(Landroid/content/Context;Landroid/os/Handler;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/b/b;->b(Landroid/content/Context;Landroid/os/Handler;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/r/b;->b(Landroid/content/Context;Landroid/os/Handler;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/i/b;->b(Landroid/content/Context;Landroid/os/Handler;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "ZZF"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/u/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "MF"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/j/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "YHXF"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/q/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/t/throw;->b(Landroid/content/Context;Landroid/os/Handler;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "MZYW"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/m/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "YMZF"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/s/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "EPAY"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/c/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "HEJU"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/d/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "HZTK"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/f/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "WYZF"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/o/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "JXZZ"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/h/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "HZPZ"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/e/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "DMZF"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/a/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    const-string v3, "DMZF"

    invoke-virtual {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/p/b;->b(Landroid/content/Context;Landroid/os/Handler;Lbn/sdk/szwcsss/coddxcxc/v/cx;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbn/sdk/szwcsss/common/y/cx;->while:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/x/native;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->safdasfs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->safdasfs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/x/native;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZJ)Lbn/sdk/szwcsss/coddxcxc/x/native;
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/native;

    invoke-static {p2}, Lbn/sdk/szwcsss/coddxcxc/x/private;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->implements()Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lbn/sdk/szwcsss/coddxcxc/x/native;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->safdasfs:Ljava/util/HashMap;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPayOrder pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :orderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZYXD"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->return:Ljava/util/List;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPayOrder pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :orderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " zyxdOrderList.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/cx;->return:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PayEx init start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/cx;->aa:Landroid/content/Context;

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/x/while;->b(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/while;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->transient:Lbn/sdk/szwcsss/coddxcxc/x/while;

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Landroid/content/Context;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {p0}, Lbn/sdk/szwcsss/common/y/cx;->for()V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->instanceof()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->cx()V

    invoke-direct {p0}, Lbn/sdk/szwcsss/common/y/cx;->while()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbn/sdk/szwcsss/common/y/cx;->throw:Z

    const-string v0, "PayEx init end"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lbn/sdk/szwcsss/coddxcxc/x/native;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order not pay yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lbn/sdk/szwcsss/coddxcxc/x/import;->cx:I

    invoke-virtual {p2, v1, v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b(ILjava/lang/String;)V

    const-string v0, "payRstUp PayMsg.PAY_NOT_PAY payorder id: %s "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0, p2}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lbn/sdk/szwcsss/coddxcxc/x/native;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lbn/sdk/szwcsss/coddxcxc/x/import;->cx:I

    invoke-virtual {p3, v1, v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b(ILjava/lang/String;)V

    const-string v0, "payRstUp PayMsg.PAY_NOT_PAY payorder id: %s "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0, p3}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->b(Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b()Lbn/sdk/szwcsss/coddxcxc/x/cx;

    move-result-object v1

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->cx()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b()Lbn/sdk/szwcsss/coddxcxc/x/cx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b(Landroid/content/Context;)V

    const-string v1, "channel no init"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lbn/sdk/szwcsss/common/y/cx;->throw:Z

    if-nez v1, :cond_1

    invoke-static {}, Lbn/sdk/szwcsss/common/y/wyyp;->getInstance()Lbn/sdk/szwcsss/common/y/wyyp;

    move-result-object v1

    invoke-virtual {v1}, Lbn/sdk/szwcsss/common/y/wyyp;->retryInit()V

    const-string v1, "pay no init"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->throw()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->for(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->b(Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lbn/sdk/szwcsss/coddxcxc/x/native;)Z
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->implements()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "orderByPid pay switch is off"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v0, ""

    if-eqz p4, :cond_1b

    const-string v2, "orderid"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v0, "orderid"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v7, ""

    invoke-direct {p0, v8}, Lbn/sdk/szwcsss/common/y/cx;->cx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no Enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0, p5}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Ljava/lang/String;Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    :goto_2
    if-nez v1, :cond_0

    invoke-direct {p0, v8, v0, v6}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->implements:Lbn/sdk/szwcsss/coddxcxc/x/implements;

    invoke-virtual {v0, v8}, Lbn/sdk/szwcsss/coddxcxc/x/implements;->private(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no payItem "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0, p5}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Ljava/lang/String;Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p2}, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/b;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no payCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0, p5}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Ljava/lang/String;Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/v/b;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/v/b;->cx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->for(Ljava/lang/String;)V

    invoke-virtual {p0, v8, p5}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Lbn/sdk/szwcsss/coddxcxc/x/native;)V

    const-string v0, "MM"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/l/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto :goto_2

    :cond_5
    const-string v0, "MGDM"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/k/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto :goto_2

    :cond_6
    const-string v0, "JD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/g/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_7
    const-string v0, "WO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/n/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_8
    const-string v0, "EG"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/b/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_9
    const-string v0, "SMS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v7

    goto/16 :goto_2

    :cond_a
    const-string v0, "YJ"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/r/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_b
    const-string v0, "LT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/i/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_c
    const-string v0, "ZZF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/u/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_d
    const-string v0, "MF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/j/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_e
    const-string v0, "YHXF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/q/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_f
    const-string v0, "ZYXD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/t/throw;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_10
    const-string v0, "MZYW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/m/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_11
    const-string v0, "YMZF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/s/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_12
    const-string v0, "EPAY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/c/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_13
    const-string v0, "HEJU"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/d/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_14
    const-string v0, "HZTK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/f/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_15
    const-string v0, "WYZF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/o/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_16
    const-string v0, "JXZZ"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/h/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_17
    const-string v0, "HZPZ"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/e/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_18
    const-string v0, "DMZF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/a/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_19
    const-string v0, "YFZF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    iget-object v4, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/p/b;->b(Landroid/content/Context;ILbn/sdk/szwcsss/coddxcxc/v/cx;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)Z

    move-result v1

    move-object v0, v7

    goto/16 :goto_2

    :cond_1a
    move-object v0, v7

    goto/16 :goto_2

    :cond_1b
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public for()V
    .locals 2

    new-instance v0, Lbn/sdk/szwcsss/common/y/aa;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/cx;->cx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbn/sdk/szwcsss/common/y/aa;-><init>(Lbn/sdk/szwcsss/common/y/cx;Landroid/os/Looper;)V

    iput-object v0, p0, Lbn/sdk/szwcsss/common/y/cx;->private:Landroid/os/Handler;

    return-void
.end method
