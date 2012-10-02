.class public Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "MyAppsLibraryAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter$1;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mHasAccountSwitcher:Z

.field private final mHasDocumentView:Z

.field private mList:Lcom/google/android/finsky/api/model/DfeList;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Z)V
    .locals 2
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "onClickListener"
    .parameter "hasDocumentView"

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 60
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 61
    iput-boolean p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasDocumentView:Z

    .line 62
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method

.method private getAccountSwitcherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 176
    :cond_0
    const v1, 0x7f080110

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 178
    .local v0, accountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 179
    return-object p1
.end method

.method private getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "doc"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 151
    if-nez p2, :cond_0

    .line 152
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasDocumentView:Z

    if-eqz v1, :cond_1

    const v1, 0x7f040060

    :goto_0
    invoke-virtual {p0, v1, p3, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 156
    check-cast v0, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 157
    .local v0, entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 159
    if-nez p1, :cond_2

    .line 160
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setMockDocument(I)V

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTag(Ljava/lang/Object;)V

    .line 169
    return-object p2

    .line 152
    .end local v0           #entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_1
    const v1, 0x7f04007f

    goto :goto_0

    .line 163
    .restart local v0       #entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 164
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "v"

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v1, :cond_1

    .line 83
    const/4 v0, 0x0

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    .line 86
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->isMoreDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_2
    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v1, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "position"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v0, :cond_1

    .line 128
    add-int/lit8 p1, p1, -0x1

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 104
    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter$1;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No footer or item at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :pswitch_0
    const/4 v0, 0x1

    .line 118
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 108
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x3

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getAccountSwitcherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 139
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x4

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected retryLoadingItems()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->retryLoadItems()V

    .line 187
    :cond_0
    return-void
.end method

.method public setDfeList(Lcom/google/android/finsky/api/model/DfeList;)V
    .locals 0
    .parameter "dfeList"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public showAccountSwitcher()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    .line 72
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method
