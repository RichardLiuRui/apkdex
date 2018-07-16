.class Lcom/dataeye/c/n;
.super Lcom/dataeye/c/l;


# instance fields
.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/Object;

.field private f:Lcom/dataeye/c/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dataeye/c/l;-><init>(Lcom/dataeye/c/l;)V

    iput-object p1, p0, Lcom/dataeye/c/n;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/dataeye/c/n;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/dataeye/c/n;->e:[Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/c/n;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/dataeye/c/n;->f:Lcom/dataeye/c/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/c/n;->f:Lcom/dataeye/c/j;

    invoke-interface {v0, p1}, Lcom/dataeye/c/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dataeye/c/n;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/dataeye/c/n;->e:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
