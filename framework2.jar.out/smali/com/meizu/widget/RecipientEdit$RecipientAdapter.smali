.class Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
.super Lcom/meizu/widget/CompositeCursorAdapterMz;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;
    }
.end annotation


# static fields
.field private static final LIMIT_COUNT:I = 0x14


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultData:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryData:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSearch:Z

.field private mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

.field private mShowLoading:Z

.field private mStartLoading:Z

.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    .line 2594
    invoke-direct {p0, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz;-><init>(Landroid/content/Context;)V

    .line 2595
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 2596
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    .line 2597
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    .line 2598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    .line 2599
    return-void
.end method

.method static synthetic access$2600(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2485
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getGroupData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;ZJ)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2485
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2485
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;JLandroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2485
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onDirectoryLoadFinished(Ljava/lang/CharSequence;JLandroid/database/Cursor;)V

    return-void
.end method

.method private cancelLoading()V
    .locals 1

    .prologue
    .line 3039
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3040
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->removePartition(I)V

    .line 3042
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    .line 3043
    return-void
.end method

.method private getGroupData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "filter"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 2755
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2756
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$1600(Lcom/meizu/widget/RecipientEdit;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2775
    :goto_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v11

    const-string v0, "summary_data_count"

    aput-object v0, v2, v10

    const-string v0, "_id"

    aput-object v0, v2, v12

    .line 2777
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2779
    .local v6, groupCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_7

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 2780
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-direct {v8, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2781
    .local v8, newCursor:Landroid/database/MatrixCursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2782
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2783
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2784
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 2785
    .local v9, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v2

    if-ge v7, v0, :cond_0

    .line 2786
    const-string v0, "title"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2787
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2785
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2759
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #groupCursor:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v8           #newCursor:Landroid/database/MatrixCursor;
    .end local v9           #row:Landroid/database/MatrixCursor$RowBuilder;
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "is_primary"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2763
    goto :goto_0

    .line 2766
    :pswitch_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2769
    goto :goto_0

    .line 2788
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #groupCursor:Landroid/database/Cursor;
    .restart local v7       #i:I
    .restart local v8       #newCursor:Landroid/database/MatrixCursor;
    .restart local v9       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_2
    :try_start_1
    const-string v0, "summary_data_count"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2789
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2800
    .end local v7           #i:I
    .end local v8           #newCursor:Landroid/database/MatrixCursor;
    .end local v9           #row:Landroid/database/MatrixCursor$RowBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2801
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2790
    .restart local v7       #i:I
    .restart local v8       #newCursor:Landroid/database/MatrixCursor;
    .restart local v9       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_4
    :try_start_2
    const-string v0, "_id"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2791
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2800
    .end local v7           #i:I
    .end local v9           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_5
    if-eqz v6, :cond_6

    .line 2801
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v8           #newCursor:Landroid/database/MatrixCursor;
    :cond_6
    :goto_3
    return-object v8

    .line 2800
    :cond_7
    if-eqz v6, :cond_8

    .line 2801
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v8, v3

    goto :goto_3

    .line 2756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHistoryData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "filter"

    .prologue
    const/4 v8, 0x0

    .line 2734
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3400(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 2735
    :try_start_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3500(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2736
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2737
    .local v9, selection:Ljava/lang/StringBuilder;
    const-string v1, "email LIKE "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2739
    const-string v7, "frequence DESC, last_time DESC"

    .line 2741
    .local v7, orderBy:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3600(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2742
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "email"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "email"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2746
    .local v8, cursor:Landroid/database/Cursor;
    monitor-exit v10

    .line 2750
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :goto_0
    return-object v8

    .line 2748
    :cond_0
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPartitionByDirectoryId(J)Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    .locals 5
    .parameter "id"

    .prologue
    .line 3011
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    .line 3012
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3013
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v2

    .line 3014
    .local v2, partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    instance-of v3, v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 3015
    check-cast v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    iget-wide v3, v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 3016
    check-cast v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3020
    .end local v2           #partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    :goto_1
    return-object v2

    .line 3012
    .restart local v2       #partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3020
    .end local v2           #partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 22
    .parameter "constraint"
    .parameter "groupCursor"
    .parameter "contactCursor"

    .prologue
    .line 2821
    if-nez p1, :cond_3

    const-string v11, ""

    .line 2822
    .local v11, filter:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 2824
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearch:Z

    .line 2825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2826
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    .line 2828
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 2829
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 2831
    new-instance v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 2832
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 2834
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->addPartition(ZZ)V

    .line 2835
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 2836
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 2939
    :cond_2
    :goto_1
    return-void

    .line 2821
    .end local v11           #filter:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 2837
    .restart local v11       #filter:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z
    invoke-static {v2}, Lcom/meizu/widget/RecipientEdit;->access$3700(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2838
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mStartLoading:Z

    .line 2839
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 2840
    .local v16, oldDirectories:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 2843
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 2846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/meizu/widget/RecipientEdit;->access$3800(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 2848
    .local v8, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    .line 2849
    .local v15, info:Landroid/net/NetworkInfo;
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2850
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    .line 2851
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    goto :goto_1

    .line 2855
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_id!=1 AND _id!=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2859
    .local v9, directoryCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 2860
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 2861
    .local v17, packageManager:Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2862
    :cond_7
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2864
    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2865
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2866
    .local v13, id:J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionByDirectoryId(J)Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    move-result-object v19

    .line 2867
    .local v19, partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    if-nez v19, :cond_8

    .line 2868
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    check-cast v19, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 2870
    .restart local v19       #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_8
    if-nez v19, :cond_9

    .line 2871
    new-instance v19, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .end local v19           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    .line 2874
    .restart local v19       #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_9
    move-object/from16 v0, v19

    iput-wide v13, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    .line 2875
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 2876
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 2877
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 2878
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 2879
    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2880
    .local v18, packageName:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2881
    .local v20, resourceId:I
    if-eqz v18, :cond_a

    if-eqz v20, :cond_a

    .line 2883
    :try_start_0
    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v21

    .line 2885
    .local v21, resources:Landroid/content/res/Resources;
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 2886
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 2887
    const-string v2, "RecipientEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot resolve directory name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2899
    .end local v21           #resources:Landroid/content/res/Resources;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2901
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 2903
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2890
    :catch_0
    move-exception v10

    .line 2891
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "RecipientEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot resolve directory name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2907
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13           #id:J
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    .end local v20           #resourceId:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearch:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 2908
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearch:Z

    .line 2909
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    .line 2910
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 2913
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 2914
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mStartLoading:Z

    .line 2915
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 2916
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    .line 2917
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 2920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 2921
    .restart local v19       #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    if-nez v2, :cond_f

    .line 2922
    new-instance v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    const/4 v3, -0x1

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;IJ)V

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    .line 2925
    :cond_f
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2930
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v17           #packageManager:Landroid/content/pm/PackageManager;
    .end local v19           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_10
    if-eqz v9, :cond_2

    .line 2931
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2934
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v9           #directoryCursor:Landroid/database/Cursor;
    .end local v15           #info:Landroid/net/NetworkInfo;
    .end local v16           #oldDirectories:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;>;"
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearch:Z

    .line 2935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2936
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    .line 2937
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    goto/16 :goto_1
.end method

.method private onDirectoryLoadFinished(Ljava/lang/CharSequence;JLandroid/database/Cursor;)V
    .locals 9
    .parameter "constraint"
    .parameter "directoryId"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2943
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 2944
    .local v3, partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    if-eqz v3, :cond_4

    .line 2948
    iget-object v5, v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2949
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/meizu/widget/RecipientEdit;->access$3300()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2951
    .local v2, newCursor:Landroid/database/MatrixCursor;
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 2952
    const/4 v5, -0x1

    invoke-interface {p4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2953
    :cond_0
    :goto_0
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2954
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2955
    .local v1, name:Ljava/lang/String;
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2957
    .local v0, data:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2958
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2959
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 2960
    .local v4, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-virtual {v4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2961
    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 2966
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v4           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 2967
    invoke-virtual {p0, v7}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 2968
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->cancelLoading()V

    .line 2969
    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mStartLoading:Z

    if-eqz v5, :cond_2

    .line 2970
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mStartLoading:Z

    .line 2971
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 2972
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v5, :cond_2

    .line 2973
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    invoke-virtual {p0, v5}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 2977
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-ne v3, v5, :cond_6

    .line 2978
    invoke-virtual {p0, v7, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 2985
    :goto_1
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2986
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    .line 2988
    :cond_3
    invoke-virtual {p0, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 3005
    .end local v2           #newCursor:Landroid/database/MatrixCursor;
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 3006
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 3008
    :cond_5
    return-void

    .line 2980
    .restart local v2       #newCursor:Landroid/database/MatrixCursor;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 2981
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_1

    .line 2991
    :cond_7
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2992
    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mStartLoading:Z

    if-eqz v5, :cond_8

    .line 2993
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mStartLoading:Z

    .line 2994
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    .line 2995
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    goto :goto_2

    .line 2997
    :cond_8
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->cancelLoading()V

    goto :goto_2
.end method

.method private onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;
    .locals 13
    .parameter "filter"
    .parameter "isGlobal"
    .parameter "directoryId"

    .prologue
    .line 2655
    const/4 v1, 0x0

    .line 2656
    .local v1, uri:Landroid/net/Uri;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2657
    .local v12, sortOrder:Ljava/lang/StringBuilder;
    const-string v0, "sort_key"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$1600(Lcom/meizu/widget/RecipientEdit;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2684
    :goto_0
    if-eqz p2, :cond_0

    .line 2685
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2690
    :cond_0
    const-string v0, " ,is_primary DESC"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/meizu/widget/RecipientEdit;->access$3300()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2694
    .local v6, contactCursor:Landroid/database/Cursor;
    if-nez p2, :cond_6

    .line 2696
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getHistoryData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2697
    .local v8, historyCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 2698
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2699
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2700
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2661
    .end local v6           #contactCursor:Landroid/database/Cursor;
    .end local v8           #historyCursor:Landroid/database/Cursor;
    :pswitch_0
    const-string v0, " ,mimetype_id DESC"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2662
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "convert_letters"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2666
    goto :goto_0

    .line 2669
    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "convert_letters"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2673
    goto/16 :goto_0

    .line 2676
    :pswitch_2
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "use_custom_order"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "remove_duplicate_entries"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 2703
    .restart local v6       #contactCursor:Landroid/database/Cursor;
    .restart local v8       #historyCursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2706
    :cond_2
    if-eqz v6, :cond_4

    .line 2707
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2708
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2709
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2714
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2717
    :cond_4
    new-instance v10, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/meizu/widget/RecipientEdit;->access$3300()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2718
    .local v10, newCursor:Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2719
    .local v9, it:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2720
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2721
    .local v7, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v11

    .line 2722
    .local v11, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2723
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    .line 2726
    .end local v7           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_5
    move-object v6, v10

    .line 2729
    .end local v8           #historyCursor:Landroid/database/Cursor;
    .end local v9           #it:Ljava/util/Iterator;
    .end local v10           #newCursor:Landroid/database/MatrixCursor;
    :cond_6
    return-object v6

    .line 2659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3025
    iput-boolean v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mShowLoading:Z

    .line 3026
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3027
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v0

    .line 3028
    .local v0, partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    invoke-virtual {v0}, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->getHasHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->getShowIfEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3035
    .end local v0           #partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    :goto_0
    return-void

    .line 3033
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->addPartition(ZZ)V

    .line 3034
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2631
    const v4, 0x1020014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2632
    .local v2, text1:Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2634
    .local v3, text2:Landroid/widget/TextView;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2635
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2636
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2637
    if-nez p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v4

    instance-of v4, v4, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    if-eqz v4, :cond_0

    .line 2639
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$3200(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040576

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2641
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2651
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 2643
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2644
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2645
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2646
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2648
    :cond_1
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 2603
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/widget/RecipientEdit$1;)V

    return-object v0
.end method

.method public isGroupData(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 2808
    invoke-virtual {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionForPosition(I)I

    move-result v0

    .line 2809
    .local v0, partitionIndex:I
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v1

    instance-of v1, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    if-eqz v1, :cond_0

    .line 2810
    const/4 v1, 0x1

    .line 2812
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2616
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2617
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x10900c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 2624
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2625
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x10900c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 2611
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    .line 2612
    return-void
.end method
