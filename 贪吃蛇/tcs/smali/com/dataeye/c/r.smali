.class public Lcom/dataeye/c/r;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dataeye_database_%1$s.db"

    sput-object v0, Lcom/dataeye/c/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/dataeye/c/r;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "DROP TABLE IF EXISTS dataeye_agenda_log"

    iput-object v0, p0, Lcom/dataeye/c/r;->b:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_history_log"

    iput-object v0, p0, Lcom/dataeye/c/r;->c:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_device"

    iput-object v0, p0, Lcom/dataeye/c/r;->d:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_user"

    iput-object v0, p0, Lcom/dataeye/c/r;->e:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_online"

    iput-object v0, p0, Lcom/dataeye/c/r;->f:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_payment"

    iput-object v0, p0, Lcom/dataeye/c/r;->g:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_oss"

    iput-object v0, p0, Lcom/dataeye/c/r;->h:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_event"

    iput-object v0, p0, Lcom/dataeye/c/r;->i:Ljava/lang/String;

    const-string v0, "DROP TABLE IF EXISTS dataeye_error_report"

    iput-object v0, p0, Lcom/dataeye/c/r;->j:Ljava/lang/String;

    const-string v0, "CREATE TABLE dataeye_agenda_log  (_id INTEGER PRIMARY KEY AUTOINCREMENT, type VARCHAR not null default \'\' , account_id VARCHAR not null default \'\' , agenda_data TEXT not null default \'\'   )"

    iput-object v0, p0, Lcom/dataeye/c/r;->k:Ljava/lang/String;

    const-string v0, "CREATE TABLE dataeye_history_log  (_id INTEGER PRIMARY KEY AUTOINCREMENT, history_data VARCHAR not null default \'\'   )"

    iput-object v0, p0, Lcom/dataeye/c/r;->l:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS dataeye_agenda_log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE dataeye_agenda_log  (_id INTEGER PRIMARY KEY AUTOINCREMENT, type VARCHAR not null default \'\' , account_id VARCHAR not null default \'\' , agenda_data TEXT not null default \'\'   )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS dataeye_history_log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE dataeye_history_log  (_id INTEGER PRIMARY KEY AUTOINCREMENT, history_data VARCHAR not null default \'\'   )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/dataeye/c/r;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invoke getSQLiteDatabase error, reason:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/dataeye/c/u;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-direct {p0, p1}, Lcom/dataeye/c/r;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/dataeye/c/r;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const-string v0, "DROP TABLE IF EXISTS dataeye_device"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dataeye_user"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dataeye_online"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dataeye_payment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dataeye_oss"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dataeye_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dataeye_error_report"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dataeye/c/r;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/dataeye/c/r;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
