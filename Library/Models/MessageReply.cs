﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using PagedList;

namespace Library
{
    public class MessageReply
    {
        public Message Messages
        {
            get;
            set;
        }

        public List<Reply> ReplyList
        {
            get;
            set;
        }
    }
}
