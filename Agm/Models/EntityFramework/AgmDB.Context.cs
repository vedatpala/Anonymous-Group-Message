﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Agm.Models.EntityFramework
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class AgmEntities1 : DbContext
    {
        public AgmEntities1()
            : base("name=AgmEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Asistance> Asistance { get; set; }
        public virtual DbSet<Groups> Groups { get; set; }
        public virtual DbSet<Manager> Manager { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TextMessage> TextMessage { get; set; }
        public virtual DbSet<Users> Users { get; set; }
    
        public virtual int spAddUserGroups(Nullable<int> userFk, Nullable<int> groupFk)
        {
            var userFkParameter = userFk.HasValue ?
                new ObjectParameter("userFk", userFk) :
                new ObjectParameter("userFk", typeof(int));
    
            var groupFkParameter = groupFk.HasValue ?
                new ObjectParameter("groupFk", groupFk) :
                new ObjectParameter("groupFk", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spAddUserGroups", userFkParameter, groupFkParameter);
        }
    
        public virtual int spGroupJoin(Nullable<int> userId, Nullable<int> groupId)
        {
            var userIdParameter = userId.HasValue ?
                new ObjectParameter("userId", userId) :
                new ObjectParameter("userId", typeof(int));
    
            var groupIdParameter = groupId.HasValue ?
                new ObjectParameter("groupId", groupId) :
                new ObjectParameter("groupId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spGroupJoin", userIdParameter, groupIdParameter);
        }
    
        public virtual ObjectResult<spGroupsManager_Result> spGroupsManager(Nullable<int> userId)
        {
            var userIdParameter = userId.HasValue ?
                new ObjectParameter("userId", userId) :
                new ObjectParameter("userId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spGroupsManager_Result>("spGroupsManager", userIdParameter);
        }
    
        public virtual int spLeaveGroup(Nullable<int> userId, Nullable<int> groupId)
        {
            var userIdParameter = userId.HasValue ?
                new ObjectParameter("userId", userId) :
                new ObjectParameter("userId", typeof(int));
    
            var groupIdParameter = groupId.HasValue ?
                new ObjectParameter("groupId", groupId) :
                new ObjectParameter("groupId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spLeaveGroup", userIdParameter, groupIdParameter);
        }
    
        public virtual ObjectResult<spUserGroup_Result> spUserGroup(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spUserGroup_Result>("spUserGroup", idParameter);
        }
    
        public virtual ObjectResult<userGroupsUsidGrpid_Result> userGroupsUsidGrpid(Nullable<int> id, Nullable<int> groupid)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var groupidParameter = groupid.HasValue ?
                new ObjectParameter("groupid", groupid) :
                new ObjectParameter("groupid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<userGroupsUsidGrpid_Result>("userGroupsUsidGrpid", idParameter, groupidParameter);
        }
    }
}
